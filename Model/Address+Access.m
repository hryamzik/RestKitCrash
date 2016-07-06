//
//  Address+Access.m
//  RestKitCrash
//
//  Created by Roman Belyakovsky on 06/07/16.
//  Copyright © 2016 brandcash. All rights reserved.
//

#import "Address+Access.h"

@implementation Address (Access)

+ (Address *)addressInManagedObjectContext:(NSManagedObjectContext *)context {
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Address"];
    NSError *error = nil;
    NSArray *addresses = [context executeFetchRequest:request error:&error];
    return [addresses firstObject];
}

@end
