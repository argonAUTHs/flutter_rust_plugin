#include "include/flutter_rust_plugin/flutter_rust_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_rust_plugin.h"

void FlutterRustPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_rust_plugin::FlutterRustPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
