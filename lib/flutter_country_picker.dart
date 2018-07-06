import 'dart:async';

import 'package:flutter/services.dart';

class FlutterCountryPicker {
  static const MethodChannel _channel =
      const MethodChannel('flutter_country_picker');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
