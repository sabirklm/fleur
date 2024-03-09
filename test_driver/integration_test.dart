import 'dart:io';
import 'dart:typed_data';
import 'package:integration_test/integration_test_driver_extended.dart';

Future<void> main() async {
  try {
    await integrationDriver(
      onScreenshot: (name, image, [args]) async {
        var fileName =
            'screenshots/${DateTime.now().microsecondsSinceEpoch}.png';
        final img = await File(fileName).create(recursive: true);
        img.writeAsBytesSync(Uint8List.fromList(image));
        return true;
      },
    );
  } catch (e) {
    print('Error occured: $e');
  }
}
