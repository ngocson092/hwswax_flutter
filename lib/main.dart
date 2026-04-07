import 'package:flutter/material.dart';

void main() {
  runApp(const WaxApp());
}

class WaxApp extends StatelessWidget {
  const WaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hollywood Waxing Studio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: AuthColors.canvas,
        useMaterial3: true,
        fontFamily: 'Space Grotesk',
      ),
      home: const LoginScreen(),
    );
  }
}

class AuthColors {
  static const canvas = Color(0xFFFAFAFA);
  static const ink = Color(0xFF000000);
  static const muted = Color(0xFF777777);
  static const border = Color(0xFFC6C6C6);
  static const placeholder = Color(0xFFD4D4D4);
  static const chip = Color(0xFFE2E2E2);
  static const note = Color(0xFFF3F3F4);
}

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
                    color: AuthColors.muted,
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
                hintText: '••••••••',
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
              Container(width: 48, height: 1, color: AuthColors.ink),
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
                hintText: '••••••••',
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
                    foregroundColor: AuthColors.muted,
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

class AuthScaffold extends StatelessWidget {
  const AuthScaffold({required this.child, required this.minHeight, super.key});

  final Widget child;
  final double minHeight;

  @override
  Widget build(BuildContext context) {
    const verticalPadding = 40.0;
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final totalHeight = constraints.maxHeight < minHeight + 80
                ? minHeight + 80
                : constraints.maxHeight;
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 448),
                    child: SizedBox(
                      width: double.infinity,
                      height: totalHeight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: verticalPadding,
                        ),
                        child: child,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class AuthTitle extends StatelessWidget {
  const AuthTitle(this.text, {this.weight = FontWeight.w300, super.key});

  final String text;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AuthColors.ink,
        fontSize: 48,
        fontWeight: weight,
        height: 1,
        letterSpacing: -2.4,
      ),
    );
  }
}

class SectionLabel extends StatelessWidget {
  const SectionLabel(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: const TextStyle(
        color: AuthColors.muted,
        fontSize: 10,
        height: 1.5,
        letterSpacing: 3,
      ),
    );
  }
}

class AuthChip extends StatelessWidget {
  const AuthChip(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: AuthColors.chip),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Color(0xFF474747),
            fontSize: 10,
            height: 1.5,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    required this.label,
    required this.hintText,
    required this.controller,
    this.trailingLabel,
    this.keyboardType,
    this.obscureText = false,
    super.key,
  });

  final String label;
  final String? trailingLabel;
  final String hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(child: SectionLabel(label)),
            if (trailingLabel != null)
              Text(
                trailingLabel!.toUpperCase(),
                style: const TextStyle(
                  color: AuthColors.muted,
                  decoration: TextDecoration.underline,
                  decorationColor: AuthColors.placeholder,
                  fontSize: 10,
                  letterSpacing: 1,
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          cursorColor: AuthColors.ink,
          style: const TextStyle(
            color: AuthColors.ink,
            fontSize: 18,
            height: 1.25,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: AuthColors.placeholder,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            contentPadding: const EdgeInsets.fromLTRB(0, 12, 0, 16),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AuthColors.border),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AuthColors.ink),
            ),
          ),
        ),
      ],
    );
  }
}

class PrimaryAuthButton extends StatelessWidget {
  const PrimaryAuthButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: AuthColors.ink,
          foregroundColor: AuthColors.chip,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            letterSpacing: 4.2,
          ),
        ),
        child: Text(label),
      ),
    );
  }
}

class SecondaryAuthButton extends StatelessWidget {
  const SecondaryAuthButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        iconAlignment: IconAlignment.end,
        icon: const Icon(Icons.arrow_forward, size: 14),
        label: Text(label.toUpperCase()),
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFF1A1C1C),
          side: const BorderSide(color: AuthColors.border),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          textStyle: const TextStyle(fontSize: 12, letterSpacing: 1.2),
        ),
      ),
    );
  }
}

class AuthDivider extends StatelessWidget {
  const AuthDivider({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(color: AuthColors.border, thickness: 0.6),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            label,
            style: const TextStyle(
              color: AuthColors.muted,
              fontSize: 10,
              letterSpacing: 1,
            ),
          ),
        ),
        const Expanded(
          child: Divider(color: AuthColors.border, thickness: 0.6),
        ),
      ],
    );
  }
}

class TermsRow extends StatelessWidget {
  const TermsRow({required this.value, required this.onChanged, super.key});

  final bool value;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: AuthColors.ink,
            side: const BorderSide(color: AuthColors.muted),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: RichText(
            text: const TextSpan(
              style: TextStyle(
                color: AuthColors.muted,
                fontFamily: 'Inter',
                fontSize: 11,
                height: 1.62,
                letterSpacing: -0.275,
              ),
              children: [
                TextSpan(text: 'BY SIGNING UP YOU AGREE TO '),
                TextSpan(
                  text: 'TERMS OF PRACTICE',
                  style: TextStyle(
                    color: AuthColors.ink,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(text: ' AND\n'),
                TextSpan(
                  text: 'STUDIO GUIDELINES',
                  style: TextStyle(
                    color: AuthColors.ink,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(text: '.'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DraftingNote extends StatelessWidget {
  const DraftingNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.fromLTRB(18, 15, 16, 16),
      decoration: const BoxDecoration(
        color: AuthColors.note,
        border: Border(left: BorderSide(color: AuthColors.ink, width: 2)),
        boxShadow: [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: const Text(
        'NOTE: SESSION TIMEOUTS ARE\nENFORCED AFTER 45 MINUTES OF\nINACTIVITY FOR SECURITY\nPROTOCOL.',
        style: TextStyle(color: Color(0xFF474747), fontSize: 10, height: 1.25),
      ),
    );
  }
}

class CrossMotif extends StatelessWidget {
  const CrossMotif({required this.size, required this.opacity, super.key});

  final double size;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: CustomPaint(
        size: Size.square(size),
        painter: _CrossMotifPainter(),
      ),
    );
  }
}

class DotMotif extends StatelessWidget {
  const DotMotif({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.03,
      child: CustomPaint(
        painter: _DotMotifPainter(),
        child: const SizedBox.expand(),
      ),
    );
  }
}

class _CrossMotifPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AuthColors.border
      ..strokeWidth = 1;
    canvas.drawLine(Offset.zero, Offset(size.width, size.height), paint);
    canvas.drawLine(Offset(size.width, 0), Offset(0, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _DotMotifPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = AuthColors.ink;
    const spacing = 28.0;
    for (double y = 0; y < size.height; y += spacing) {
      for (double x = 0; x < size.width; x += spacing) {
        canvas.drawCircle(Offset(x, y), 1.2, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
