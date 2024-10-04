import 'package:flutter/widgets.dart';
import 'package:gobjdebug/src/app.dart';
import 'package:gobjdebug/src/pigeon/debug_service.g.dart';
import 'package:gobjdebug/src/service/debug_service_impl.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DebugServiceFlutterApi.setUp(DebugServiceFlutterApiImpl());

  runApp(const App());
}
