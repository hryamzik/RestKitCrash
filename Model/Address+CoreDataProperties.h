//
//  Address+CoreDataProperties.h
//  RestKitCrash
//
//  Created by Roman Belyakovsky on 06/07/16.
//  Copyright © 2016 brandcash. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Address.h"

NS_ASSUME_NONNULL_BEGIN

@interface Address (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *city;
@property (nullable, nonatomic, retain) NSString *country;
@property (nullable, nonatomic, retain) NSString *hostname;
@property (nullable, nonatomic, retain) NSString *ip;

@end

NS_ASSUME_NONNULL_END
