//
//  ViewController.m
//  MyApp
//
//  Created by chendong on 2021/12/30.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

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
    [button setTitle:@"Show Debug Flutter!" forState:UIControlStateNormal];
#else
    [button setTitle:@"Show Release Flutter!" forState:UIControlStateNormal];
#endif
    
    button.backgroundColor = UIColor.blueColor;
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    FlutterEngine *flutterEngine = ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;

    FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"test_method"
                                                                binaryMessenger:flutterEngine.binaryMessenger];
    
    [channel invokeMethod:@"my" arguments:nil];
}

- (void)showFlutter {
    FlutterEngine *flutterEngine = ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
    if (!flutterEngine) {
        NSLog(@"!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        return;
    }
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
    flutterViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    
    FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"test_method"
                                                                binaryMessenger:flutterViewController.binaryMessenger];
    [channel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        result(call.arguments);
    }];
    
    [self presentViewController:flutterViewController animated:YES completion:nil];
}

@end
