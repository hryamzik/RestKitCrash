//
//  MenuViewController.m
//  RestKitCrash
//
//  Created by Roman Belyakovsky on 06/07/16.
//  Copyright © 2016 brandcash. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSManagedObjectContext *)managedObjectContext {
    return [RKManagedObjectStore defaultStore].mainQueueManagedObjectContext;
}

-(NSString *)segueIdentifierForIndexPathInLeftMenu:(NSIndexPath *)indexPath {
    if (!indexPath) {
        return targetSegueID;
    }
    UITableViewCell *cell = [self.leftMenu.tableView cellForRowAtIndexPath:indexPath];
    if ( cell != nil ) {
        return @"";
    }
    return @"default";
}

- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (void)receiveMenuNotification:(NSNotification*)notification
{
    if ([notification.name isEqualToString:@"openContentViewControllerForLeftMenuWithSegue"])
    {
        NSString *segue = [notification object];
        NSLog (@"Successfully received test notification! %@", segue);
        [self openSegueWithName:segue];
    }
}


- (void)openSegueWithName:(NSString *)segueName
{
    NSLog(@"Requested segue: %@", segueName);
    targetSegueID = segueName;
    [self openContentViewControllerForMenu:AMSlideMenuLeft atIndexPath:nil];
}

- (void)configureLeftMenuButton:(UIButton *)button {
    CGRect frame = button.frame;
    frame.origin = CGPointMake(0, 0);
    frame.size = CGSizeMake(40, 40);
    button.frame = frame;
    [button setImage:[UIImage imageNamed:@"gamburger.png"] forState:UIControlStateNormal];
}

@end
