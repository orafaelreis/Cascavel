//
//  BaseViewController.m
//  ShopListViper
//
//  Created by admin on 26/07/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()
@property (nonatomic, strong) UIView *loading;

@end

@implementation BaseViewController

#pragma mark - View LifeCycle
- (void)loadView{
    [super loadView];
    [self.presenter loadView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.presenter viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.presenter viewWillAppear];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.presenter viewDidAppear];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.presenter viewWillDisappear];
}


-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [self.presenter viewDidDisappear];
}

#pragma mark - Handle Rotation

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    return UIInterfaceOrientationIsPortrait(toInterfaceOrientation);
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

- (BOOL)shouldAutorotate {
    return NO;
}


#pragma mark - PullDown Event

-(void)addPullDown{
    // Initialize the refresh control.
    self.refreshControl = [[UIRefreshControl alloc] init];
    self.refreshControl.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:.5f];
    self.refreshControl.tintColor = [UIColor whiteColor];
    [self.refreshControl addTarget:self.presenter
                            action:@selector(requestData)
                  forControlEvents:UIControlEventValueChanged];
}

- (void)reloadData{
    // End the refreshing
    if (self.refreshControl) {
        [self.refreshControl endRefreshing];
    }
}

#pragma mark - Loading Event

- (void)showLoading {
    [self showLoadingResetingAlpha: YES];
}

- (void)showLoadingResetingAlpha: (BOOL) resetAlpha{
    [self.view endEditing:YES];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    
    if (!self.loading) {
        self.loading = [self defaultLoadingWithText];
        [self.view addSubview:self.loading];
    }
    
    if (resetAlpha) {
        [self.loading setAlpha:0.0f];
        self.navigationItem.rightBarButtonItem.enabled = NO;
        [UIView animateWithDuration:0.5
                         animations:^{
                             [self.loading setAlpha:1.0f];
                         }
                         completion:nil];
    }
}

- (void)removeLoading {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    self.navigationItem.rightBarButtonItem.enabled = YES;
    
    [UIView animateWithDuration:0.5
                     animations:^{
                         [self.loading setAlpha:0.0f];
                     }
                     completion:^(BOOL finished){
                         [self.loading setAlpha:1.0f];
                         [self.loading removeFromSuperview];
                         self.loading = nil;
                     }];
}


#pragma mark - Util

- (UIActivityIndicatorView *) customActivityIndicatorView{
    UIActivityIndicatorView *loading = [[UIActivityIndicatorView alloc] init];
    [loading setFrame:CGRectMake(0, 0, 25, 25)];
    [loading setHidesWhenStopped:YES];
    [loading setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleWhiteLarge];
    [loading startAnimating];
    loading.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    return loading;
}

- (UIView *)defaultLoadingWithText
{
    UIView *view = [[UIView alloc]initWithFrame: CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds))];
    view.backgroundColor = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.6f];
    view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    UIActivityIndicatorView *loading = [self customActivityIndicatorView];
    loading.center = view.center;
    
    [view addSubview:loading];
    
    return view;
}

@end