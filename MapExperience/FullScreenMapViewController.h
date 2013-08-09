//
//  FullScreenMapViewController.h
//  MapExperience
//
//  Created by Omar Thanawalla on 8/7/13.
//  Copyright (c) 2013 Omar Thanawalla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface FullScreenMapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property(nonatomic,weak) IBOutlet MKMapView *mapView;

@end
