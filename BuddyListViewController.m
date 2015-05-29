//
//  BuddyListViewController.m
//  CoffeeBuddies
//
//  Created by Kevin on 5/25/15.
//  Copyright (c) 2015 makr.space. All rights reserved.
//

#import "BuddyListViewController.h"
#import "Friend.h"
#import "BuddyListTableViewCell.h"
#import <QuartzCore/QuartzCore.h>
#import "AddedFriendsViewController.h"

@interface BuddyListViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *friendListArray;
@property NSMutableArray *addedFriendListArray;


@end

@implementation BuddyListViewController

#pragma mark - viewDidAppear
- (void)viewDidAppear:(BOOL)animated
{
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];

    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
    barButton.title = @"Go Back";

    self.navigationItem.backBarButtonItem = barButton;
}


#pragma mark - viewDidLoad
- (void)viewDidLoad {
    [super viewDidLoad];

    self.friendListArray = [NSMutableArray new]; // initializes the friendListArray
    self.friendListArray = [Friend createSampleData]; // sets the friendListarray to the returned array from the class method
    self.addedFriendListArray = [NSMutableArray new]; // initializes the addedFriendListArray

}

#pragma mark - TableView Methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.friendListArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BuddyListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    Friend * myFriend = [self.friendListArray objectAtIndex:indexPath.row];

    if (cell == nil)
    {
        cell = [[BuddyListTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }

    cell.nameLabel.text = myFriend.name;
    cell.favoriteCoffeeLabel.text = [NSString stringWithFormat:@"Favorite Coffee: %@", myFriend.favoriteCoffee];

    cell.profilePictureImageView.image = myFriend.profilePicture;
    cell.profilePictureImageView.layer.cornerRadius = 32.5;
    cell.profilePictureImageView.clipsToBounds = YES;
    cell.profilePictureImageView.layer.borderWidth = 0.4f;
    cell.profilePictureImageView.layer.borderColor = [UIColor grayColor].CGColor;

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // creates a Friend object to get the object and indexPath within the array
    Friend * myFriend = [self.friendListArray objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];

    // a simple IF statement to see whether a cell's accessoryType is set to None. If none, add checkmark. If checkmark, switch back to None
    if (cell.accessoryType == UITableViewCellAccessoryNone)
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        [self.addedFriendListArray addObject:[self.friendListArray objectAtIndex:indexPath.row]];
        NSLog(@"I just added %@ to the array", myFriend.name);
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
        [self.addedFriendListArray removeObject:[self.friendListArray objectAtIndex:indexPath.row]];
        NSLog(@"I just removed %@ from the array", myFriend.name);
    }

    // after each action, reload the table view to reflect changes
    [tableView reloadData];
}


- (IBAction)addFriendButtonTapped:(UIBarButtonItem *)sender
{

    // prints a numerical placeholder for the number of friends in the addedFriendListArray
    NSLog(@"There are a total number of %lu friends in the array", self.addedFriendListArray.count);

    // performs the segue with identifier
    [self performSegueWithIdentifier:@"showFriends" sender:sender];

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // checks to see if the identifier matches then performs segue code
    if ([segue.identifier isEqual: @"showFriends"])
    {
        // sets the addedFriendListArray property from destination view controller to the array from this view controller
        AddedFriendsViewController *vc = segue.destinationViewController;
        vc.addedFriendListArray = self.addedFriendListArray;
    }
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
