//
//  BaseEntity.h
//  Cascavel: base VIPER Framework
//
//  Created by Rafael Reis (@orafaelreis) on 07/09/15.
//  licensed under MIT license
//

#import <Foundation/Foundation.h>

@interface BaseEntity : NSObject<NSCoding>

@property(nonatomic, strong) NSString *name;

- (void)encodeWithCoder:(NSCoder *)aCoder;
- (id)initWithCoder:(NSCoder *)aDecoder;

@end
