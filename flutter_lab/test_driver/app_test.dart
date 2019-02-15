import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group("Main Screen Testing...", () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    test('Scroll', () async {
      // Record the performance timeline of things that happen inside the closure
      Timeline timeline = await driver.traceAction(() async {
        final mainGridView = find.byValueKey('main_gridview');
        // Scroll down 2 times
        for (int i = 0; i < 2; i++) {
          // Scroll 300 pixels down, for 300 millis
          await driver.scroll(
              mainGridView, 0.0, -300.0, Duration(milliseconds: 300));

          // Emulate a user's finger taking its time to go back to the original
          // position before the next scroll
          await Future<void>.delayed(Duration(milliseconds: 500));
        }

        // Scroll up 2 times
        for (int i = 0; i < 2; i++) {
          await driver.scroll(
              mainGridView, 0.0, 300.0, Duration(milliseconds: 300));
          await Future<void>.delayed(Duration(milliseconds: 500));
        }
      });
      // The `timeline` object contains all the performance data recorded during
      // the scrolling session. It can be digested into a handful of useful
      // aggregate numbers, such as "average frame build time".
      TimelineSummary summary = TimelineSummary.summarize(timeline);

      // The following line saves the timeline summary to a JSON file.
      summary.writeSummaryToFile('scrolling_performance', pretty: true);

      // The following line saves the raw timeline data as JSON.
      summary.writeTimelineToFile('scrolling_performance', pretty: true);
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    //  test('Enter valid username and password', () async {
    //   final usernameFinder = find.text('Email');
    //   //  final passwordFinder = find.text('Password');
    //   await driver.tap(usernameFinder,timeout: Duration(seconds: 10));
    //   await driver.enterText('test@test.com');
    //   await driver.waitFor(find.text('test@test.com'));

    //   expect(
    //       await driver.getText(usernameFinder),
    //     'test@test.com'
    //   );
    // });
  });
}
