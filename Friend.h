//
//  Friend.h
//  CoffeeBuddies
//
//  Created by Kevin on 5/26/15.
//  Copyright (c) 2015 makr.space. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Friend : NSObject
@property NSString *name;
@property NSString *favoriteCoffee;
@property UIImage *profilePicture;

+ (NSMutableArray *)createSampleData;

- (instancetype)initWithFullName:(NSString *)name aFavoriteCoffee:(NSString *)favoriteCoffee aProfilePicture:(UIImage *)image;

@end