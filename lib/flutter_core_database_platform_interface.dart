import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_core_database_method_channel.dart';

abstract class FlutterCoreDatabasePlatform extends PlatformInterface {
  /// Constructs a FlutterCoreDatabasePlatform.
  FlutterCoreDatabasePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterCoreDatabasePlatform _instance = MethodChannelFlutterCoreDatabase();

  /// The default instance of [FlutterCoreDatabasePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterCoreDatabase].
  static FlutterCoreDatabasePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterCoreDatabasePlatform] when
  /// they register themselves.
  static set instance(FlutterCoreDatabasePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
