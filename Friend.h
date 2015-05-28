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

// custom initializer that will take a string for the name, a string for the favorite coffee, and a UIImage for the profile picture
- (instancetype)initWithFullName:(NSString *)name aFavoriteCoffee:(NSString *)favoriteCoffee aProfilePicture:(UIImage *)image;

// a custom class method that will create the sample data and return a mutable array holding the data
+ (NSMutableArray *)createSampleData;



@end