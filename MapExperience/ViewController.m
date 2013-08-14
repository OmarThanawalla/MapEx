//
//  ViewController.m
//  MapExperience
//
//  Created by Omar Thanawalla on 8/7/13.
//  Copyright (c) 2013 Omar Thanawalla. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Talk to Yelp Api and get the data points for the businesses
    AFHTTPClient *httpClient = [AFHTTPClient clientWithBaseURL:[NSURL URLWithString:@"http://api.openweathermap.org/"]];
    httpClient.parameterEncoding = AFJSONParameterEncoding;
    [httpClient setDefaultHeader:@"Accept" value:@"application/json"];
    [httpClient registerHTTPOperationClass:[AFJSONRequestOperation class]];
    
    //[myClient setDefaultHeader:@"Accept" value:@"application/json"];
    
    [httpClient getPath:@"data/2.5/weather?q=London,uk" parameters:nil
        success:^(AFHTTPRequestOperation *operation, id responseObject)
    {
        //Success code
        NSLog(@"We have success!!");
        NSLog(@"This is what responseObject look like: %@",responseObject);
        
        
    }
        failure:^(AFHTTPRequestOperation *operation, NSError *error)
    {
        //Error code
        NSLog(@"We did NOT have success");
    }
     ];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
