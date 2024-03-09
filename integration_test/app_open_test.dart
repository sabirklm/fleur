import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:fleur/main_prod.dart' as app;
import 'package:logger/logger.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding();
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('app open test group', () {
    testWidgets('app open test', (WidgetTester tester) async {
      app.main();
      await binding.convertFlutterSurfaceToImage();
      var logger = Logger();
      logger.d("Opening App");
      await tester.pumpAndSettle(const Duration(seconds: 10));
      await binding.takeScreenshot('test-screenshot');
      logger.d("Taking Screenshot");
      await tester.pumpAndSettle(const Duration(seconds: 10));
      Finder finder = find.byKey(const Key('signInButton'));
      logger.d("Finding Sign In Button");
      await tester.pumpAndSettle(const Duration(seconds: 10));
      await tester.tap(finder);
      logger.d("Tapping Sign In Button");
      await tester.pumpAndSettle(const Duration(seconds: 10));
      await binding.takeScreenshot('test-screenshot');
      logger.d("Taking Screenshot");
      await tester.pumpAndSettle(const Duration(seconds: 10));
    });
  });
}
