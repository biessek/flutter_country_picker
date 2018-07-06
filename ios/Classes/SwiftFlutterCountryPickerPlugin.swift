import Flutter
import UIKit
    
public class SwiftFlutterCountryPickerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "biessek.rocks/flutter_country_picker", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterCountryPickerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if("getCountryNames" == call.method) {
        let args = call.arguments as! NSDictionary
        self.receiveCountryNames(result: result, isoCodes: args.value(forKey: "isoCodes") as! [String])
    } else {
        result("MethodNotImplemented")
    }
  }

  private func receiveCountryNames(result: FlutterResult, isoCodes: [String]) {
    var countryNames: Dictionary<String, String> = Dictionary.init()
    
    let currentLocale: Locale = Locale.current
    for code in isoCodes {
        countryNames[code] = currentLocale.localizedString(forRegionCode: code)
    }
    
    result(countryNames as NSDictionary)
  }
}
