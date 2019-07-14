//
//  DroneUtility.m
//  AutonomousDriving
//
//  Created by GoEum Cha on 7/14/19.
//  Copyright © 2019 GoEum Cha. All rights reserved.
//

#import "DroneUtility.h"
#import <DJISDK/DJISDK.h>

@implementation DroneUtility

+(DJIBaseProduct*) fetchProduct {
    return [DJISDKManager product];
}

+(DJIAircraft*) fetchAircraft {
    if (![DJISDKManager product]) {
        return nil;
    }
    
    if ([[DJISDKManager product] isKindOfClass:[DJIAircraft class]]) {
        return ((DJIAircraft*)[DJISDKManager product]);
    }
    
    return nil;
}

+(DJIFlightController*) fetchFlightController {
    if (![DJISDKManager product]) {
        return nil;
    }
    
    if ([[DJISDKManager product] isKindOfClass:[DJIAircraft class]]) {
        return ((DJIAircraft*)[DJISDKManager product]).flightController;
    }
    
    return nil;
}

+ (void)showAlertViewWithTitle:(NSString *)title message:(NSString *)message cancelAlertAction:(UIAlertAction*)cancelAlert defaultAlertAction:(UIAlertAction*)defaultAlert viewController:(UIViewController *)viewController{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    if (cancelAlert) {
        [alertController addAction:cancelAlert];
    }
    
    if (defaultAlert) {
        [alertController addAction: defaultAlert];
    }
    
    [viewController presentViewController:alertController animated:YES completion:nil];
}

@end
