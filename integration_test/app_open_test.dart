import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:fleur/main_prod.dart' as app;

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding();
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('app open test group', () {
    testWidgets('app open test', (WidgetTester tester) async {
      app.main();
      await binding.convertFlutterSurfaceToImage();
      await tester.pumpAndSettle(const Duration(seconds: 10));
      await binding.takeScreenshot('test-screenshot');
      await tester.pumpAndSettle(const Duration(seconds: 10));
      Finder finder = find.byKey(const Key('signInButton'));
      await tester.pumpAndSettle(const Duration(seconds: 10));
      await tester.tap(finder);
      await tester.pumpAndSettle(const Duration(seconds: 10));
      await binding.takeScreenshot('test-screenshot');
      await tester.pumpAndSettle(const Duration(seconds: 10));
    });
  });
}
