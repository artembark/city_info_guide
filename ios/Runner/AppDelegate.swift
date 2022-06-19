import UIKit
import Flutter
import YandexMapsMobile

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      YMKMapKit.setLocale("ru_RU")
      YMKMapKit.setApiKey("write-any-api-key")
    
      let controller:FlutterViewController = window?.rootViewController as! FlutterViewController
      let MAP_LAUNCHER_CHANNEL = "map_launcher"
      let API_KEY_CHANNEL = "api_key"
      let mapChannel = FlutterMethodChannel(name: MAP_LAUNCHER_CHANNEL,binaryMessenger: controller.binaryMessenger)
      mapChannel.setMethodCallHandler({(call:FlutterMethodCall,result:@escaping FlutterResult)->Void in
          guard let args = call.arguments as? [String:String] else {result(FlutterError(code: "ARGUMENTS_NOT_PROVIDED",message: "Arguments not provided",details: nil));return}
          guard let urlPrefix = args["mapUrlPrefix"] else {result(FlutterError(code: "MAP_NAME_NOT_PROVIDED",message: "Map name not provided",details: nil)); return}
          
          switch call.method{
          case "isMapAvailable":
              if(isMapAvailable(mapUrlPrefix: urlPrefix)){return result(true);}
              else{result(FlutterError(code: "MAP_NOT_AVAILABLE", message: "Map is not installed on a device", details: nil));}
          case "showMap":
              guard let url = args["url"] else {result(FlutterError(code: "MAP_URL_NOT_PROVIDED",message: "Map url not provided",details: nil));return}
              if(isMapAvailable(mapUrlPrefix: urlPrefix)){
              if #available(iOS 10.0, *) {
                  UIApplication.shared.open(URL(string:url)!, options: [:], completionHandler: nil)
              } else {
                  return result(FlutterMethodNotImplemented)
              }}else {result(FlutterError(code: "MAP_NOT_AVAILABLE", message: "Map is not installed on a device", details: nil))}
          default:
              result(FlutterMethodNotImplemented)
          }
      })
      
      let apiKeyChannel = FlutterMethodChannel(name: API_KEY_CHANNEL,binaryMessenger: controller.binaryMessenger)
      apiKeyChannel.setMethodCallHandler({(call:FlutterMethodCall,result:@escaping FlutterResult)->Void in
          guard let args = call.arguments as? [String:String] else {result(FlutterError(code: "ARGUMENTS_NOT_PROVIDED",message: "Arguments not provided",details: nil));return}
          guard let yandexMapKitLocale = args["yandexMapKitLocale"] else {result(FlutterError(code: "LOCALE_NOT_PROVIDED",message: "Map locale not provided",details: nil)); return}
          guard let yandexMapKitApiKey = args["yandexMapKitKey"] else {result(FlutterError(code: "API_KEY_NOT_PROVIDED",message: "Api key not provided",details: nil)); return}
          switch call.method{
    
          case "setYandexMapKitParameters":
             // YMKMapKit.setLocale(yandexMapKitLocale)
             YMKMapKit.setApiKey(yandexMapKitApiKey)
          default:
              result(FlutterMethodNotImplemented)
          }
      })
      
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

private func isMapAvailable(mapUrlPrefix: String?) -> Bool {

    return UIApplication.shared.canOpenURL(URL(string:mapUrlPrefix!)!)
}
