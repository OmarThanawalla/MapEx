//
//  MKMapView+ZoomLevel.h
//  MapExperience
//
//  Created by Omar Thanawalla on 8/7/13.
//  Copyright (c) 2013 Omar Thanawalla. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface MKMapView (ZoomLevel)

- (void)setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate
                  zoomLevel:(NSUInteger)zoomLevel
                   animated:(BOOL)animated;
@end
