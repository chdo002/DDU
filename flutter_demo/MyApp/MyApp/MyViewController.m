//
//  MyViewController.m
//  MyApp
//
//  Created by 陈栋 on 2022/1/20.
//

#import "MyViewController.h"

@interface MyViewController ()

//@property (nonatomic, strong) FlutterMethodChannel *channel;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//
//    __weak typeof(self.binaryMessenger) weakMessanger = self.binaryMessenger;
//    FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"test_method"
//                                                                binaryMessenger:weakMessanger];
//    __weak typeof(self) ws = self;
//    [channel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
//        if ([call.method isEqualToString:@"pop"]) {
//            __strong typeof(ws) ss = ws;
//            [ss dismissViewControllerAnimated:YES completion:^{
//
//            }];
//            result(call.arguments);
//            return;
//        }
//        result(call.arguments);
//    }];
}

- (void)dealloc
{
//    [self.engine destroyContext];
}

@end
