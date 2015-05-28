//
//  Friend.m
//  CoffeeBuddies
//
//  Created by Kevin on 5/26/15.
//  Copyright (c) 2015 makr.space. All rights reserved.
//

#import "Friend.h"

@implementation Friend

// the basic setup to return the initwith method. The properties you set in the .h file are being used here
- (instancetype)initWithFullName:(NSString *)name aFavoriteCoffee:(NSString *)favoriteCoffee aProfilePicture:(UIImage *)image;
{
    self = [super init];
    if (self)
    {
        self.name = name;
        self.favoriteCoffee = favoriteCoffee;
        self.profilePicture = image;
    }
    return self;
}

// creates the sample data using the custom initwith method. Then adds the data to a mutable array and this entire method returns a mutable array
+ (NSMutableArray *)createSampleData
{

    Friend *jason = [[Friend alloc]initWithFullName:@"Jason Beets" aFavoriteCoffee:@"Bolivia Dream" aProfilePicture:[UIImage imageNamed:@"obama"]];

    Friend *melissa = [[Friend alloc]initWithFullName:@"Melissa Chanel" aFavoriteCoffee:@"Midnight Blues" aProfilePicture:[UIImage imageNamed:@"jolie"]];

    Friend *crazyTom = [[Friend alloc]initWithFullName:@"Crazy Tom" aFavoriteCoffee:@"Crazy Horse" aProfilePicture:[UIImage imageNamed:@"putin"]];

    Friend *samantha = [[Friend alloc]initWithFullName:@"Samantha Roper" aFavoriteCoffee:@"SoCal Fuse" aProfilePicture:[UIImage imageNamed:@"grey"]];

    Friend *coolioMoss = [[Friend alloc]initWithFullName:@"Coolio Moss" aFavoriteCoffee:@"Wired Myers" aProfilePicture:[UIImage imageNamed:@"murphy"]];

    Friend *niek = [[Friend alloc]initWithFullName:@"Niek Travol" aFavoriteCoffee:@"Shotgun Willys" aProfilePicture:[UIImage imageNamed:@"dinero"]];

    NSMutableArray *friendArray = [[NSMutableArray alloc]initWithObjects:jason,melissa,crazyTom,samantha,coolioMoss,niek, nil];

    return friendArray;
}

@end
