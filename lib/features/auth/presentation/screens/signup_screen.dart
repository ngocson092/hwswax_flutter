import 'package:flutter/material.dart';
import 'package:wax_app/app/app_theme.dart';
import 'package:wax_app/features/auth/presentation/widgets/auth_button.dart';
import 'package:wax_app/features/auth/presentation/widgets/auth_motifs.dart';
import 'package:wax_app/features/auth/presentation/widgets/auth_scaffold.dart';
import 'package:wax_app/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:wax_app/features/auth/presentation/widgets/auth_typography.dart';
import 'package:wax_app/features/auth/presentation/widgets/terms_row.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _acceptedTerms = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    FocusScope.of(context).unfocus();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Mock signup ready for Laravel email/password API.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      minHeight: 980,
      child: Stack(
        children: [
          const Positioned.fill(child: DotMotif()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              const SectionLabel('New Project / Registration'),
              const SizedBox(height: 16),
              const AuthTitle('Join the Studio'),
              const SizedBox(height: 24),
              Container(width: 48, height: 1, color: AppColors.ink),
              const SizedBox(height: 72),
              AuthTextField(
                label: 'Full Name',
                hintText: 'ARCHITECT NAME',
                controller: _nameController,
              ),
              const SizedBox(height: 40),
              AuthTextField(
                label: 'Email',
                hintText: 'BLUEPRINT@STUDIO.COM',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 40),
              AuthTextField(
                label: 'Phone Number',
                hintText: '+00 000 000',
                controller: _phoneController,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 40),
              AuthTextField(
                label: 'Password',
                hintText: '********',
                controller: _passwordController,
                obscureText: true,
              ),
              const SizedBox(height: 40),
              TermsRow(
                value: _acceptedTerms,
                onChanged: (value) {
                  setState(() => _acceptedTerms = value ?? false);
                },
              ),
              const SizedBox(height: 56),
              PrimaryAuthButton(label: 'CREATE ACCOUNT', onPressed: _submit),
              const SizedBox(height: 44),
              Center(
                child: TextButton.icon(
                  onPressed: () => Navigator.of(context).pop(),
                  iconAlignment: IconAlignment.end,
                  label: const Text('SIGN IN INSTEAD'),
                  icon: const Icon(Icons.arrow_forward, size: 14),
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.muted,
                    textStyle: const TextStyle(
                      fontSize: 11,
                      letterSpacing: 1.1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
