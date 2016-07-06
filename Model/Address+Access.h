//
//  Address+Access.h
//  RestKitCrash
//
//  Created by Roman Belyakovsky on 06/07/16.
//  Copyright © 2016 brandcash. All rights reserved.
//

#import "Address.h"

@interface Address (Access)

+ (Address *)addressInManagedObjectContext:(NSManagedObjectContext *)context;

@end
