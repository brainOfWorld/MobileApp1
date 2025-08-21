import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobileapp1/main.dart'; // ✅ make sure this matches your project name in pubspec.yaml

void main() {
  testWidgets('Login flow shows Dashboard after login',
          (WidgetTester tester) async {
        // Build our app
        await tester.pumpWidget(const MyApp());

        // ✅ Check that Login screen is visible
        expect(find.text('Login'), findsOneWidget);

        // ✅ Enter username
        await tester.enterText(find.byType(TextField).at(0), 'testuser');

        // ✅ Enter password
        await tester.enterText(find.byType(TextField).at(1), 'password123');

        // ✅ Tap the login button
        await tester.tap(find.text('Login'));
        await tester.pumpAndSettle(); // Wait for navigation

        // ✅ Verify that Dashboard is now displayed
        expect(find.text('Student Information Manager'), findsOneWidget);
        expect(find.text('Owusu Emmanuel'), findsOneWidget); // Your sample student name
      });
}
