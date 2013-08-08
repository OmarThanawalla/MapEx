//
//  FullScreenMapViewController.m
//  MapExperience
//
//  Created by Omar Thanawalla on 8/7/13.
//  Copyright (c) 2013 Omar Thanawalla. All rights reserved.
//

#import "FullScreenMapViewController.h"

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
}


- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated
{
    NSLog(@"regionDidChangeAnimated");
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
