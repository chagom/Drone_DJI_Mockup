//
//  DroneUtility.h
//  AutonomousDriving
//
//  Created by GoEum Cha on 7/14/19.
//  Copyright © 2019 GoEum Cha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DroneUtility : NSObject

+ (void)showAlertViewWithTitle:(NSString *)title message:(NSString *)message cancelAlertAction:(UIAlertAction*)cancelAlert defaultAlertAction:(UIAlertAction*)defaultAlert viewController:(UIViewController *)viewController;
@end



NS_ASSUME_NONNULL_END
