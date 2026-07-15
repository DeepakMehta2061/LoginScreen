import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:loginscreen/main.dart';

void main() {
  testWidgets('shows login screen fields and actions', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Login Page'), findsOneWidget);
    expect(find.text('Login to MyApp'), findsOneWidget);
    expect(find.text('Welcome Back!'), findsOneWidget);
    expect(find.text('Please sign in to continue.'), findsOneWidget);
    expect(find.text('Email or Phone number'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Login'), findsOneWidget);
    expect(find.text('Forgot Password ?'), findsOneWidget);

    await tester.enterText(find.byType(TextField).first, 'user@example.com');
    await tester.enterText(find.byType(TextField).last, 'password');
    await tester.tap(find.widgetWithText(ElevatedButton, 'Login'));
    await tester.pump();

    expect(find.text('user@example.com'), findsOneWidget);
  });
}
