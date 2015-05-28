//
//  BuddyListTableViewCell.h
//  CoffeeBuddies
//
//  Created by Kevin on 5/25/15.
//  Copyright (c) 2015 makr.space. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BuddyListTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *favoriteCoffeeLabel;

@property (weak, nonatomic) IBOutlet UIImageView *profilePictureImageView;



@end
