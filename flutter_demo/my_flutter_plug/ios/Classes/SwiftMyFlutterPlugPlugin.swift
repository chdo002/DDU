import Flutter
import UIKit

public class SwiftMyFlutterPlugPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "my_flutter_plug", binaryMessenger: registrar.messenger())
    let instance = SwiftMyFlutterPlugPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS：Version " + UIDevice.current.systemVersion)
  }
}
