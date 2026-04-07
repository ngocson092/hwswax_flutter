import 'package:flutter/material.dart';
import 'package:wax_app/app/app_theme.dart';
import 'package:wax_app/features/auth/presentation/screens/login_screen.dart';

class WaxApp extends StatelessWidget {
  const WaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hollywood Waxing Studio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      home: const LoginScreen(),
    );
  }
}
