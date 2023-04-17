import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_core_database/flutter_core_database.dart';
import 'package:flutter_core_database/flutter_core_database_platform_interface.dart';
import 'package:flutter_core_database/flutter_core_database_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterCoreDatabasePlatform
    with MockPlatformInterfaceMixin
    implements FlutterCoreDatabasePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterCoreDatabasePlatform initialPlatform = FlutterCoreDatabasePlatform.instance;

  test('$MethodChannelFlutterCoreDatabase is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterCoreDatabase>());
  });

  test('getPlatformVersion', () async {
    FlutterCoreDatabase flutterCoreDatabasePlugin = FlutterCoreDatabase();
    MockFlutterCoreDatabasePlatform fakePlatform = MockFlutterCoreDatabasePlatform();
    FlutterCoreDatabasePlatform.instance = fakePlatform;

    expect(await flutterCoreDatabasePlugin.getPlatformVersion(), '42');
  });
}
