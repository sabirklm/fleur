
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:fleur/main_prod.dart' as app;

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding();
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('increment', () {
    testWidgets('success', (WidgetTester tester) async {
      app.main();
      await binding.convertFlutterSurfaceToImage();
      await tester.pumpAndSettle(const Duration(seconds: 3));
      await binding.takeScreenshot('test-screenshot');
      await tester.pumpAndSettle(const Duration(seconds: 11));
    });
  });
}
