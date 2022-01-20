
#import "FlutterPlugin.h"

@implementation FlutterPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"flutter_plugin" binaryMessenger:registrar.messenger];
    [registrar addMethodCallDelegate:FlutterPlugin.new channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result
{
    result(@"123");
}

@end
