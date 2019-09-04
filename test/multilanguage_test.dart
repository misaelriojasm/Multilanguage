import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:multilanguage/multilanguage.dart';

void main() {
  const MethodChannel channel = MethodChannel('multilanguage');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Multilanguage.platformVersion, '42');
  });
}
