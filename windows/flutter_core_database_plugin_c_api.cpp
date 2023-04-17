#include "include/flutter_core_database/flutter_core_database_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_core_database_plugin.h"

void FlutterCoreDatabasePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_core_database::FlutterCoreDatabasePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
