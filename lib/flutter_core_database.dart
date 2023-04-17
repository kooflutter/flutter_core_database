
import 'flutter_core_database_platform_interface.dart';

class FlutterCoreDatabase {
  Future<String?> getPlatformVersion() {
    return FlutterCoreDatabasePlatform.instance.getPlatformVersion();
  }
}
