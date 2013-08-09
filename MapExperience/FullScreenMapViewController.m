//
//  FullScreenMapViewController.m
//  MapExperience
//
//  Created by Omar Thanawalla on 8/7/13.
//  Copyright (c) 2013 Omar Thanawalla. All rights reserved.
//

#import "FullScreenMapViewController.h"
#import "MKMapView+ZoomLevel.h"

#define METERS_PER_MILE 1609.344


@interface FullScreenMapViewController ()

@end

@implementation FullScreenMapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 30.266535;
    zoomLocation.longitude= -97.74560;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.75 * METERS_PER_MILE, 0.75*METERS_PER_MILE);
    
    [self.mapView setRegion:viewRegion animated:YES];
    
    
    //[self.mapView setCenterCoordinate:zoomLocation zoomLevel:3 animated:YES];
    
}
    /*
- (void)startStandardUpdates
{
    // Create the location manager if this object does not
    // already have one.
    CLLocationManager *locationManager = [[CLLocationManager alloc] init];
    
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyKilometer;
    
    // Set a movement threshold for new events.
    locationManager.distanceFilter = 500;
    
    [locationManager startUpdatingLocation];
}
*/

/*
// Delegate method from the CLLocationManagerDelegate protocol.
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    
    CLLocation* location = [locations lastObject];
    
    CLLocationCoordinate2D myCoord = location.coordinate;
    
    CLLocationCoordinate2D anotherCoord = CLLocationCoordinate2DMake(32.7828, 96.8039);
    
    NSLog(@"didUpdateLocation");
    [self.mapView setCenterCoordinate:myCoord zoomLevel:8 animated:YES];
    
}
*/

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated
{
    NSLog(@"regionDidChangeAnimated");
    NSLog(@"The lat and long is: %f, %f",self.mapView.region.center.latitude,self.mapView.region.center.longitude);
    
    NSLog(@"The lat and long is: %f, %f",self.mapView.region.span.latitudeDelta,self.mapView.region.span.longitudeDelta);
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
