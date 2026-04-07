import 'package:flutter/material.dart';
import 'package:wax_app/features/auth/presentation/screens/signup_screen.dart';
import 'package:wax_app/features/auth/presentation/widgets/auth_button.dart';
import 'package:wax_app/features/auth/presentation/widgets/auth_divider.dart';
import 'package:wax_app/features/auth/presentation/widgets/auth_motifs.dart';
import 'package:wax_app/features/auth/presentation/widgets/auth_scaffold.dart';
import 'package:wax_app/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:wax_app/features/auth/presentation/widgets/auth_typography.dart';
import 'package:wax_app/features/auth/presentation/widgets/drafting_note.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    FocusScope.of(context).unfocus();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Mock sign in ready for Laravel email/password API.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      minHeight: 960,
      child: Stack(
        children: [
          const Positioned(
            left: 16,
            top: -56,
            child: CrossMotif(size: 128, opacity: 0.16),
          ),
          const Positioned(
            right: -88,
            bottom: 24,
            child: CrossMotif(size: 256, opacity: 0.08),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthChip('Access Node 0.1'),
              const SizedBox(height: 24),
              const AuthTitle('Welcome Back', weight: FontWeight.w700),
              const SizedBox(height: 16),
              const SizedBox(
                width: 280,
                child: Text(
                  'Please authenticate to access the\narchitectural skeletal ecosystem.',
                  style: TextStyle(
                    color: Color(0xFF777777),
                    fontFamily: 'Inter',
                    fontSize: 16,
                    height: 1.62,
                  ),
                ),
              ),
              const SizedBox(height: 48),
              AuthTextField(
                label: '01. Identification (Email)',
                hintText: 'name@firm.com',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 32),
              AuthTextField(
                label: '02. Authorization (Key)',
                trailingLabel: 'Forgot Password?',
                hintText: '********',
                controller: _passwordController,
                obscureText: true,
              ),
              const SizedBox(height: 56),
              PrimaryAuthButton(label: 'SIGN IN', onPressed: _submit),
              const SizedBox(height: 24),
              const AuthDivider(label: 'OR'),
              const SizedBox(height: 24),
              SecondaryAuthButton(
                label: 'Create an account',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => const SignupScreen(),
                    ),
                  );
                },
              ),
              const Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Transform.rotate(
                  angle: -0.026,
                  child: const DraftingNote(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
