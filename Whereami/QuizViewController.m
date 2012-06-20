//
//  QuizViewController.m
//  Whereami
//
//  Created by PATRICK LEE on 6/18/12.
//  Copyright (c) 2012 Patrick Lee. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self){
        locationManager = [[CLLocationManager alloc] init];
        
        [locationManager setDelegate:self];
        
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        [locationManager startUpdatingLocation];
        
    }
    
    
    
    return self;
}

- (void)dealloc{
    [locationManager setDelegate: nil];
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    NSLog(@"%@", newLocation);
}

- (void)locationManager:(CLLocationManager *)manager    
       didFailWithError:(NSError *)error{
    NSLog(@"Could not find location: %@", error);
}

@end
