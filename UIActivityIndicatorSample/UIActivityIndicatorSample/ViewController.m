//
//  ViewController.m
//  UIActivityIndicatorSample
//
//  Created by Dolice on 2013/06/27.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIActivityIndicatorView *indicator;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //背景色を白に設定
    self.view.backgroundColor = [UIColor whiteColor];
    
    //初期化
    _indicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    _indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
    _indicator.center = self.view.center;
    _indicator.hidesWhenStopped = YES;
    [self.view addSubview:_indicator];
}

- (IBAction)playButtonEvent:(id)sender
{
    /*
    if (UIActivityIndicatorViewStyleWhiteLarge == _indicator.activityIndicatorViewStyle) {
        _indicator.frame = CGRectMake(0, 0, 50, 50);
    } else {
        _indicator.frame = CGRectMake(0, 0, 20, 20);
    }
     */
    NSLog(@"aaa");
    _indicator.center = self.view.center;
    [_indicator startAnimating];
}

- (IBAction)stopButtonEvent:(id)sender
{
    _indicator.hidesWhenStopped = NO;
    [_indicator stopAnimating];
}

- (IBAction)pauseButtonEvent:(id)sender
{
    /*
    [self stop];
    if (UIActivityIndicatorViewStyleGray < ++_indicator.activityIndicatorViewStyle) {
        _indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    }
    [self play];
     */
}

@end
