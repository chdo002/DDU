#import "MyFlutterPlugPlugin.h"
#if __has_include(<my_flutter_plug/my_flutter_plug-Swift.h>)
#import <my_flutter_plug/my_flutter_plug-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "my_flutter_plug-Swift.h"
#endif

@implementation MyFlutterPlugPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    [SwiftMyFlutterPlugPlugin registerWithRegistrar:registrar];
}

@end
