import Flutter
import UIKit

public class SwiftFlutterRustPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_rust_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterRustPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }

  public func dummyMethodToEnforceBundling() {
     // This will never be executed
    dummy_method_to_enforce_bundling();
  }
}
