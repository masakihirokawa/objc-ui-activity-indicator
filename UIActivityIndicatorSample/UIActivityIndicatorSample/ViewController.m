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
    _indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    _indicator.frame = CGRectMake(0, 0, 50, 50);
    _indicator.center = self.view.center;
    _indicator.hidesWhenStopped = YES;
    [self.view addSubview:_indicator];
}

- (IBAction)play:(id)sender
{
    if (UIActivityIndicatorViewStyleWhiteLarge == _indicator.activityIndicatorViewStyle) {
        _indicator.frame = CGRectMake(0, 0, 50, 50);
    } else {
        _indicator.frame = CGRectMake(0, 0, 20, 20);
    }
    _indicator.center = self.view.center;
    [_indicator startAnimating];
}

- (IBAction)stop:(id)sender
{
    _indicator.hidesWhenStopped = NO;
    [_indicator stopAnimating];
}

- (IBAction)pause:(id)sender
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
