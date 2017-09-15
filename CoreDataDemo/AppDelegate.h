//
//  AppDelegate.h
//  CoreDataDemo
//
//  Created by Pradip Walghude on 2017-01-08.
//  Copyright © 2017   extentia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

