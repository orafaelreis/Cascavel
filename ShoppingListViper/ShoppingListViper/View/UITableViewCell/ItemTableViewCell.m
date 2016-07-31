//
//  ItemTableViewCell.m
//  Cascavel
//
//  Created by Rafael Reis (@orafaelreis) on 29/11/15.
//  Copyright © 2015 orafaelreis. All rights reserved.
//

#import "ItemTableViewCell.h"

@implementation ItemTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    _progressView.frame = CGRectMake(0.f, CGRectGetMaxY(self.frame) - 3.f, self.frame.size.width, 2.f);
    _progressView.translatesAutoresizingMaskIntoConstraints = YES;
}

- (void)setQuantity:(NSUInteger)quantity shouldBe:(NSUInteger)shouldBe{
    [_progressView setProgress:((float)quantity/(float)shouldBe) animated:NO];//;
    
    if (_progressView.progress < 0.3) {
        _progressView.trackTintColor = [UIColor redColor];
    }
    else if (_progressView.progress < 0.5) {
        _progressView.trackTintColor = [UIColor yellowColor];
    }
    else{
        _progressView.trackTintColor = [UIColor grayColor];
    }
}

//- (void)layoutSubviews{
//    [super layoutSubviews];
//    
//    _progressView.frame = CGRectMake(0.f, 22.f, 320.f, 20.f);
//}



@end
