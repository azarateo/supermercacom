//
//  mapViewController.h
//  supermercacom
//
//  Created by azarateo on 31/05/14.
//  Copyright (c) 2014 azarateo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface mapViewController : UIViewController<CLLocationManagerDelegate>{

    MKMapView *mapview;
    CLLocationCoordinate2D ubicacionActual;



}

@property (weak, nonatomic) IBOutlet MKMapView *map;


@end
