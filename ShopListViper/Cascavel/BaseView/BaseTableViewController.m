//
//  BaseTableViewController.m
//  Cascavel: base VIPER Framework
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "BaseTableViewController.h"

@implementation BaseTableViewController


@synthesize params;

-(instancetype)init{
    self = [super init];
    if (self) {
        //TO DO
        [self initialize];
    }
    return self;
}


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self initialize];
    }
    return self;
}
-(void)awakeFromNib{
    [super awakeFromNib];
    [self initialize];
}

- (void)initialize
{
    if (!mySelf) {
        mySelf = [[BaseViewController alloc] init];
    }
}

#pragma mark - View LifeCycle

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

#pragma mark - Decorator Pattern

- (void)setPresenter:(id<BasePresenterProtocol>)presenter{
    [mySelf setPresenter:presenter];
}

- (id<BasePresenterProtocol>)presenter{
    return [mySelf presenter];
}

-(void)showLoading{
    [mySelf showLoading];
}
-(void)removeLoading{
    [mySelf removeLoading];
}


@end
