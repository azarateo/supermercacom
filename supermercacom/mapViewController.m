//
//  mapViewController.m
//  supermercacom
//
//  Created by azarateo on 31/05/14.
//  Copyright (c) 2014 azarateo. All rights reserved.
//

#import "mapViewController.h"
#define COLOMBIA_LAT 5;
#define COLOMBIA_LONG -72;
#define THESPAN 0.1f;

@interface mapViewController ()

@end

@implementation mapViewController
@synthesize map;



- (void)viewDidLoad
{
    [super viewDidLoad];
    [self findCurrentLocation];
    
    
    MKCoordinateRegion region;
    CLLocationCoordinate2D centro;
    
    centro.latitude = COLOMBIA_LAT;
    centro.longitude = COLOMBIA_LONG;
    
    
    centro = ubicacionActual;
    
    MKCoordinateSpan elspan;
    elspan.latitudeDelta = THESPAN;
    elspan.longitudeDelta = THESPAN;
    region.center = centro;
    region.span = elspan;
    
    [map setRegion:region animated:YES];
    map.showsUserLocation = YES;
    
    
}

-(void)findCurrentLocation
{
    
    CLLocationManager *locationManager = [[CLLocationManager alloc] init];
    if ([CLLocationManager locationServicesEnabled])
    {
        locationManager.delegate = self;
        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        locationManager.distanceFilter = kCLDistanceFilterNone;
        [locationManager startUpdatingLocation];
    }
    
    
    CLLocation *location = [locationManager location];
    ubicacionActual = [location coordinate];
    
    NSString *str=[[NSString alloc] initWithFormat:@" latitude:%f longitude:%f",ubicacionActual.latitude,ubicacionActual.longitude];
    NSLog(@"%@",str);
    
    
}

@end
