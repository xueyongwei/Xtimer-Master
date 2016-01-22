//
//  ViewController.m
//  Xtimer-Master
//
//  Created by 薛永伟 on 16/1/22.
//  Copyright © 2016年 薛永伟. All rights reserved.
//

#import "ViewController.h"
#import "XTimer/XTimer.h"

@interface ViewController ()
{
    XTimer *_timer;
    int i;
}
@property (weak, nonatomic) IBOutlet UILabel *LB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    i=0;
    _timer = [XTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(hahaha:) userInfo:@{@"a":@"1"} repeats:YES];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)hahaha:(NSDictionary *)dic
{
    NSLog(@"%@",dic);
    _LB.text = [NSString stringWithFormat:@"第%d次：%@",i++,dic];
}
- (IBAction)onJIxu:(id)sender {
    [_timer reStart];
}
- (IBAction)onZanting:(id)sender {
    [_timer stop];
}
- (IBAction)onQuxiao:(id)sender {
    [_timer invalidate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
