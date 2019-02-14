import 'dart:async';
import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test/test.dart';

void main() {
  
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    enableFlutterDriverExtension();
      group('scrolling performance test', () {
        FlutterDriver driver;
        
        setUpAll(() async {
          // Connects to the app
          driver = await FlutterDriver.connect();
        });

      tearDownAll(() async {
            if (driver != null) {
              // Closes the connection
              driver.close();
            }
          });
      }

      
  }
}