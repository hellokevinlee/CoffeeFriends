//
//  AddedFriendsViewController.m
//  CoffeeBuddies
//
//  Created by Kevin on 5/26/15.
//  Copyright (c) 2015 makr.space. All rights reserved.
//

#import "AddedFriendsViewController.h"
#import "BuddyListTableViewCell.h"
#import "Friend.h"

@interface AddedFriendsViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation AddedFriendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"Added Friends";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  self.addedFriendListArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BuddyListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];

    Friend * myFriend = [self.addedFriendListArray objectAtIndex:indexPath.row];
    cell.nameLabel.text = myFriend.name;
    cell.favoriteCoffeeLabel.text = [NSString stringWithFormat:@"Favorite Coffee: %@", myFriend.favoriteCoffee];
    cell.profilePictureImageView.image = myFriend.profilePicture;

    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end