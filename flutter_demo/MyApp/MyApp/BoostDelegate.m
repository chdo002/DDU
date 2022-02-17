//
//  BoostDelegate.m
//  MyApp
//
//  Created by chendong on 2022/2/17.
//

#import "BoostDelegate.h"

@implementation BoostDelegate

//@optional
//- (FlutterEngine*) engine;
//@required

///如果框架发现您输入的路由表在flutter里面注册的路由表中找不到，那么就会调用此方法来push一个纯原生页面
- (void)pushNativeRoute:(NSString *) pageName arguments:(NSDictionary *) arguments {
    NSLog(@"%@",pageName);
}

///当框架的withContainer为true的时候，会调用此方法来做原生的push
- (void)pushFlutterRoute:(FlutterBoostRouteOptions *)options {
    NSLog(@"%@",options);
    FBFlutterViewContainer *vc = FBFlutterViewContainer.new;
    [vc setName:options.pageName uniqueId:options.uniqueId params:options.arguments opaque:options.opaque];
    [((UIViewController *)UIApplication.sharedApplication.delegate.window.rootViewController) presentViewController:vc animated:true completion:^{
            
    }];
}

///当pop调用涉及到原生容器的时候，此方法将会被调用
- (void)popRoute:(FlutterBoostRouteOptions *)options {
    NSLog(@"%@",options);
    
    FBFlutterViewContainer *vc = ((UIViewController *)UIApplication.sharedApplication.delegate.window.rootViewController).presentedViewController;
    if ([vc isKindOfClass:FBFlutterViewContainer.class] && [vc.uniqueIDString isEqualToString:options.uniqueId]) {
        [vc dismissViewControllerAnimated:true completion:nil];
    }
}

@end
