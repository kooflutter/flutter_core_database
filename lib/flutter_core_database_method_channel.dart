import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_core_database_platform_interface.dart';

/// An implementation of [FlutterCoreDatabasePlatform] that uses method channels.
class MethodChannelFlutterCoreDatabase extends FlutterCoreDatabasePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_core_database');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
