import 'package:flutter/services.dart';

class TermuxAPI {
  static const MethodChannel _channel = MethodChannel('termux_api');

  static Future<dynamic> runCommand(String command) async {
    final result = await _channel.invokeMethod('runCommand', <String, dynamic>{
      'command': command,
    });
    return result;
  }
}
