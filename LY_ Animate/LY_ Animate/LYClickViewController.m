//
//  LYClickViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/6/13.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYClickViewController.h"

@interface LYClickViewController ()

@property(nonatomic, strong) UIImageView *click;
@property(nonatomic, strong) UIImageView *hourHand;
@property(nonatomic, strong) UIImageView *minuteHand;
@property(nonatomic, strong) UIImageView *secondHand;

@property(nonatomic, strong) NSTimer *timer;

@end

@implementation LYClickViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    _click = [[UIImageView alloc] initWithFrame:CGRectMake(74, 53, 234, 243)];
    _click.image = [UIImage imageNamed:@"click.png"];
    [self.view addSubview:_click];
    
    _hourHand = [[UIImageView alloc] initWithFrame:CGRectMake(172, 91, 38, 109)];
    _hourHand.image = [UIImage imageNamed:@"hour.png"];
    [self.view addSubview:_hourHand];
    
    _minuteHand = [[UIImageView alloc]  initWithFrame:CGRectMake(172, 91, 38, 109)];
    _minuteHand.image = [UIImage imageNamed:@"min.png"];
    [self.view addSubview:_minuteHand];
    
    _secondHand = [[UIImageView alloc] initWithFrame:CGRectMake(172, 91, 38, 109)];
    _secondHand.image = [UIImage imageNamed:@"sec.png"];
    [self.view addSubview:_secondHand];
    
    self.timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(tick) userInfo:nil repeats:YES];

    
}

- (void)tick{
    //convert time to hours, minutes and seconds
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSUInteger units = NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *components = [calendar components:units fromDate:[NSDate date]];
    CGFloat hoursAngle = (components.hour / 12.0) * M_PI * 2.0;
    //calculate hour hand angle //calculate minute hand angle
    CGFloat minsAngle = (components.minute / 60.0) * M_PI * 2.0;
    //calculate second hand angle
    CGFloat secsAngle = (components.second / 60.0) * M_PI * 2.0;
    //rotate hands
    _hourHand.transform = CGAffineTransformMakeRotation(hoursAngle);
    _minuteHand.transform = CGAffineTransformMakeRotation(minsAngle);
    _secondHand.transform = CGAffineTransformMakeRotation(secsAngle);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
