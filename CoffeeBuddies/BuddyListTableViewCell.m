//
//  BuddyListTableViewCell.m
//  CoffeeBuddies
//
//  Created by Kevin on 5/25/15.
//  Copyright (c) 2015 makr.space. All rights reserved.
//

#import "BuddyListTableViewCell.h"

@implementation BuddyListTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.profilePictureImageView.layer.cornerRadius = 32.5;
    self.profilePictureImageView.clipsToBounds = YES;
    self.profilePictureImageView.layer.borderWidth = 0.4f;
    self.profilePictureImageView.layer.borderColor = [UIColor grayColor].CGColor;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
