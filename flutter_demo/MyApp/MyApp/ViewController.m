//
//  ViewController.m
//  MyApp
//
//  Created by chendong on 2021/12/30.
//

#import "ViewController.h"
#import "AppDelegate.h"
@import Flutter;
@import FlutterPluginRegistrant;

@interface ViewController ()
{
    FlutterViewController *flutterViewController;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Make a button to call the showFlutter function when pressed.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(showFlutter)
     forControlEvents:UIControlEventTouchUpInside];
    
#if DEBUG
    [button setTitle:@"Show1 Debug Flutter!" forState:UIControlStateNormal];
#else
    [button setTitle:@"Show2 Release Flutter!" forState:UIControlStateNormal];
#endif
    
    button.backgroundColor = UIColor.blueColor;
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
    
    
//    FlutterEngine *flutterEngine = ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
//    if (!flutterEngine) {
//        NSLog(@"!!!!!!!!!!!!!!!!!!!!!!!!!!!");
//        return;
//    }
//    flutterViewController = [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
    
    flutterViewController = [[FlutterViewController alloc] initWithProject:nil initialRoute:@"vc_route" nibName:nil bundle:nil];
    flutterViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    
    FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"test_method"
                                                                binaryMessenger:flutterViewController.binaryMessenger];
    
    __weak typeof(self) ws = self;
    [channel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        if ([call.method isEqualToString:@"pop"]) {
            __strong typeof(ws) ss = ws;
            [ws dismissViewControllerAnimated:ss->flutterViewController completion:^{
                result(call.arguments);
            }];
            return;
        }
        result(call.arguments);
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    FlutterEngine *flutterEngine = ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
    FlutterEngine *flutterEngine = flutterViewController.engine;
    FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"test_method"
                                                                binaryMessenger:flutterEngine.binaryMessenger];
    
    [channel invokeMethod:@"my" arguments:nil];
}

- (void)showFlutter {
    
    [self presentViewController:flutterViewController animated:YES completion:nil];
}

@end
