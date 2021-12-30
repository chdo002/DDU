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
    [button setTitle:@"Show Flutter!" forState:UIControlStateNormal];
    button.backgroundColor = UIColor.blueColor;
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
}


- (void)showFlutter {
    FlutterEngine *flutterEngine =
    ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
    FlutterViewController *flutterViewController =
    [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
    
    flutterViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:flutterViewController animated:YES completion:nil];
}

@end
