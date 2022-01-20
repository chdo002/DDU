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
#import "MyViewController.h"

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
    [button setTitle:@"Show1 Debug Flutter!" forState:UIControlStateNormal];
#else
    [button setTitle:@"Show2 Release Flutter!" forState:UIControlStateNormal];
#endif
    
    button.backgroundColor = UIColor.blueColor;
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    [flutterViewController.channel invokeMethod:@"mmmm" arguments:nil];
}

- (void)showFlutter {
    
//    FlutterEngine *engine = [[FlutterEngine alloc] initWithName:@"ssss"];
    
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithProject:nil initialRoute:nil nibName:nil bundle:nil];
    
    flutterViewController.modalPresentationStyle = UIModalPresentationFullScreen;;
    [self presentViewController:flutterViewController animated:YES completion:nil];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [flutterViewController dismissViewControllerAnimated:YES completion:nil];
    });
}

@end
