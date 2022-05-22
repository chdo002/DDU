
import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        GeneratedPluginRegistrant.register(with: self)
        
        let res = super.application(application, didFinishLaunchingWithOptions: launchOptions)
        
        if #available(iOS 13.0, *) {
            application.keyWindow?.backgroundColor = .systemBackground
            application.keyWindow?.rootViewController?.view.backgroundColor = .systemBackground
        } else {
            // Fallback on earlier versions
        }
        
        return res
    }
}
