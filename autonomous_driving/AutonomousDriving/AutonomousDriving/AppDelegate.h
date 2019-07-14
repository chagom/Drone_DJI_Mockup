//
//  AppDelegate.h
//  AutonomousDriving
//
//  Created by GoEum Cha on 7/14/19.
//  Copyright © 2019 GoEum Cha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

