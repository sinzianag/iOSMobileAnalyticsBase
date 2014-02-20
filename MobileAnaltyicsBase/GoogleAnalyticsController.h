//
//  GoogleAnalyticsController.h
//  MobileAnaltyicsBase
//
//  Created by Sinziana Gafitanu on 2/19/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GAI.h"

@interface GoogleAnalyticsController : NSObject {
    BOOL _enabled;
    id<GAITracker> _tracker;
    
}

@property (nonatomic, assign) BOOL enabled;
@property (nonatomic, retain) id<GAITracker> tracker;

+ (id)sharedInstance;

@end
