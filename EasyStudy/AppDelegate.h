//
//  AppDelegate.h
//  EasyStudy
//
//  Created by Paran Sonthalia on 1/27/15.
//  Copyright (c) 2015 Mango. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@property (copy, readwrite) NSString *indWord;
@property (copy, readwrite) NSString *indDef;
@property (readwrite) int goldInt;
@property (readwrite) int progress;



@end

