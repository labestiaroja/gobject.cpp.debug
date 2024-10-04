import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/src/pigeon/debug_service.g.dart',
  dartOptions: DartOptions(),
  gobjectHeaderOut: 'linux/libs/debug_service.g.h',
  gobjectSourceOut: 'linux/libs/debug_service.g.cc',
  gobjectOptions: GObjectOptions(),
))
@HostApi()
abstract class DebugServiceHostApi {
  @async
  String getHostname();
}

@FlutterApi()
abstract class DebugServiceFlutterApi {
  void getHostname(
    String response,
  );
}
