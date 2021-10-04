//
//  ViewController.m
//  Symboization
//
//  Created by 陈栋 on 2021/9/30.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self test];
}

- (void)test {
    NSLog(@"%@/%@",NSThread.callStackReturnAddresses,NSThread.callStackSymbols);
}

@end
