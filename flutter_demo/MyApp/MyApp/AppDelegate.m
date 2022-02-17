//
//  AppDelegate.m
//  MyApp
//
//  Created by chendong on 2021/12/30.
//

#import "AppDelegate.h"
//#import <FlutterPluginRegistrant/GeneratedPluginRegistrant.h>
@import flutter_boost;
#import "BoostDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey,id> *)launchOptions {
    
//    self.flutterEngine = [[FlutterEngine alloc] initWithName:@"my flutter engine"];
//    [self.flutterEngine runWithEntrypoint:nil initialRoute:@"main"];
////    [self.flutterEngine runWithEntrypoint:@"app_entry" initialRoute:@"engine_route"];
//    [GeneratedPluginRegistrant registerWithRegistry:self.flutterEngine];
//    return [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    [FlutterBoost.instance setup:application
                        delegate:BoostDelegate.new
                        callback:^(FlutterEngine *engine) {
            
    } options:FlutterBoostSetupOptions.createDefault];
    
    return YES;
}

@end
