//
//  ViewController.h
//  RestKitCrash
//
//  Created by Roman Belyakovsky on 06/07/16.
//  Copyright © 2016 brandcash. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Address+Access.h"

@interface ViewController : UIViewController <NSFetchedResultsControllerDelegate>

- (NSManagedObjectContext *)managedObjectContext;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;

@end

