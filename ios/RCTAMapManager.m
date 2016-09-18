//
//  RCTAmapViewManager.m
//  SalesApp
//
//  Created by 徐远翔 on 16/9/17.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTAMapManager.h"
#import "RCTConvert+CoreLocation.h"
#import "RCTAMap.h"

@implementation RCTAMapManager

RCT_EXPORT_MODULE()

- (UIView *) view{
    return [[RCTAMap alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(showsCompass, BOOL)

RCT_EXPORT_VIEW_PROPERTY(showsScale, BOOL)

RCT_EXPORT_VIEW_PROPERTY(rotateEnabled, BOOL)

RCT_EXPORT_VIEW_PROPERTY(zoomEnabled, BOOL)

RCT_EXPORT_VIEW_PROPERTY(showsUserLocation, BOOL)

RCT_CUSTOM_VIEW_PROPERTY(zoomLevel, float, RCTAMap) {
    if (json == nil) return;
    [view setZoomLevel:[RCTConvert float:json] animated:YES];
}

RCT_CUSTOM_VIEW_PROPERTY(center, CLLocationCoordinate2D, RCTAMap) {
    if(json == nil) return;
    CLLocationCoordinate2D coor = [RCTConvert CLLocationCoordinate2D: json];
    if (coor.longitude > 0.0 && coor.latitude > 0.0) {
        [view setCenterCoordinate: coor animated:YES];
    }
}




@end


