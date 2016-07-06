//
//  MenuViewController.h
//  RestKitCrash
//
//  Created by Roman Belyakovsky on 06/07/16.
//  Copyright © 2016 brandcash. All rights reserved.
//

#import <AMSlideMenu/AMSlideMenuMainViewController.h>
#import "UIViewController+AMSlideMenu.h"

@interface MenuViewController : AMSlideMenuMainViewController
{
    NSString *targetSegueID;
}

- (NSManagedObjectContext *)managedObjectContext;


@end
