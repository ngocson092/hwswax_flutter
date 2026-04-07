import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wax_app/main.dart';

void main() {
  testWidgets('auth flow opens signup from login', (tester) async {
    await tester.pumpWidget(const WaxApp());

    expect(find.text('Welcome Back'), findsOneWidget);
    expect(find.text('SIGN IN'), findsOneWidget);

    final createAccountButton = find.widgetWithText(
      OutlinedButton,
      'CREATE AN ACCOUNT',
    );
    await tester.ensureVisible(createAccountButton);
    await tester.tap(createAccountButton);
    await tester.pumpAndSettle();

    expect(find.text('Join the Studio'), findsOneWidget);
    expect(find.text('CREATE ACCOUNT'), findsOneWidget);

    final signInInsteadButton = find.widgetWithText(
      TextButton,
      'SIGN IN INSTEAD',
    );
    await tester.ensureVisible(signInInsteadButton);
    await tester.tap(signInInsteadButton);
    await tester.pumpAndSettle();

    expect(find.text('Welcome Back'), findsOneWidget);
  });

  testWidgets('mock login submit shows Laravel API placeholder', (
    tester,
  ) async {
    await tester.pumpWidget(const WaxApp());

    await tester.enterText(find.byType(TextField).first, 'client@example.com');
    await tester.enterText(find.byType(TextField).last, 'password');
    final signInButton = find.widgetWithText(FilledButton, 'SIGN IN');
    await tester.ensureVisible(signInButton);
    await tester.tap(signInButton);
    await tester.pump();

    expect(
      find.text('Mock sign in ready for Laravel email/password API.'),
      findsOneWidget,
    );
  });
}
