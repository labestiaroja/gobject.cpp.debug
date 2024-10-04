import 'package:flutter/foundation.dart';
import 'package:gobjdebug/src/pigeon/debug_service.g.dart';

class DebugServiceFlutterApiImpl implements DebugServiceFlutterApi {
  @override
  void getHostname(String response) {
    debugPrint(response);
  }
}
