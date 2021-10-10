//
//  ViewController.m
//  Symbo
//
//  Created by 陈栋 on 2021/10/5.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UITextView * textView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.textView = [[UITextView alloc] initWithFrame:CGRectInset(self.view.bounds, 30, 30)];
    self.textView.editable = NO;
    self.textView.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:self.textView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [self ttttt1];
}

- (void)ttttt1 {
    
    NSString *str = [NSString stringWithFormat:@"File = %s\nLine = %d\nFunc=%s\n", __FILE__, __LINE__, __FUNCTION__];
    
    self.textView.text = str;
    
    str = [NSString stringWithFormat:@"%@\n\n\n\n\n%@",
           [NSThread callStackReturnAddresses].description,
           [NSThread callStackSymbols].description];
    
    self.textView.text = str;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    @[@1][2];
}

@end
