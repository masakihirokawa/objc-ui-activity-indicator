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
    
    //UIActivityIndicator初期化
    _indicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, INDICATOR_LARGE_SIZE, INDICATOR_LARGE_SIZE)];
    
    //色をグレーに指定
    _indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    
    //座標を指定
    _indicator.center = self.view.center;
    
    //停止した時に隠れるよう設定
    _indicator.hidesWhenStopped = YES;
    
    //画面に追加
    [self.view addSubview:_indicator];
}

//インジケーター再生
- (IBAction)playButtonEvent:(id)sender
{
    if (UIActivityIndicatorViewStyleWhiteLarge == _indicator.activityIndicatorViewStyle) {
        _indicator.frame = CGRectMake(0, 0, INDICATOR_LARGE_SIZE, INDICATOR_LARGE_SIZE);
    } else {
        _indicator.frame = CGRectMake(0, 0, INDICATOR_SMALL_SIZE, INDICATOR_SMALL_SIZE);
    }
    _indicator.center = self.view.center;
    [_indicator startAnimating];
}

//インジケーター停止
- (IBAction)stopButtonEvent:(id)sender
{
    [_indicator stopAnimating];
}

@end
