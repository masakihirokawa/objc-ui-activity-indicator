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
    
    UIBarButtonItem* playButton =
    [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay
                                                   target:self
                                                   action:@selector(playDidPush)];
    UIBarButtonItem* pauseButton =
    [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPause
                                                   target:self
                                                   action:@selector(pauseDidPush)];
    UIBarButtonItem* changeButton =
    [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward
                                                   target:self
                                                   action:@selector(changeDidPush)];
    NSArray* items = [NSArray arrayWithObjects:playButton, pauseButton, changeButton, nil];
    [self setToolbarItems:items animated:YES];
    
    _indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    _indicator.frame = CGRectMake( 0, 0, 50, 50 );
    _indicator.center = self.view.center;
    [self.view addSubview:_indicator];

    [_indicator startAnimating];
}

- (void)playDidPush {
    if ( UIActivityIndicatorViewStyleWhiteLarge == _indicator.activityIndicatorViewStyle ) {
        _indicator.frame = CGRectMake( 0, 0, 50, 50 );
    } else {
        _indicator.frame = CGRectMake( 0, 0, 20, 20 );
    }
    _indicator.center = self.view.center;
    [_indicator startAnimating];
}

- (void)pauseDidPush {
    _indicator.hidesWhenStopped = NO;
    [_indicator stopAnimating];
}

- (void)changeDidPush {
    [self pauseDidPush];
    if ( UIActivityIndicatorViewStyleGray < ++_indicator.activityIndicatorViewStyle ) {
        _indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    }
    [self playDidPush];
}

@end
