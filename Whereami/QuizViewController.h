//
//  QuizViewController.h
//  Whereami
//
//  Created by PATRICK LEE on 6/18/12.
//  Copyright (c) 2012 Patrick Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface QuizViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}

@end
