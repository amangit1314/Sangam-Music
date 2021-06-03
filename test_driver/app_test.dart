// Imports the Flutter Driver API.
import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.
    final counterTextFinder = find.byValueKey('counter');
    final buttonFinder = find.byValueKey('increment');

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      driver.close();
    });
  });

  test('create account', () async {
    await driver.tap(UserCredential);
    await driver.enterText("example@gmail.com");

    await driver.tap(PasswordCredential);
    await driver.enterText("123456");

    await driverLog.tap(SignUpAccountButton)
  });
}
