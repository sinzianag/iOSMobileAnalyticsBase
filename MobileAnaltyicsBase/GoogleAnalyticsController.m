//
//  GoogleAnalyticsController.m
//  MobileAnaltyicsBase
//
//  Created by Sinziana Gafitanu on 2/19/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import "GoogleAnalyticsController.h"
#import "GAI.h"


@implementation GoogleAnalyticsController


@synthesize enabled = _enabled;
@synthesize tracker = _tracker;


#pragma mark Singleton Methods

+ (id)sharedInstance {
    static GoogleAnalyticsController *analyticsController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        analyticsController = [[self alloc] init];
    });
    return analyticsController;
}

- (id)init {
    if (self = [super init]) {
        _enabled = YES;
        
        // Optional: automatically send uncaught exceptions to Google Analytics.
        [GAI sharedInstance].trackUncaughtExceptions = YES;
        
        // Optional: set Google Analytics dispatch interval to e.g. 20 seconds.
        [GAI sharedInstance].dispatchInterval = 20;
        
        // Optional: set Logger to VERBOSE for debug information.
        [[[GAI sharedInstance] logger] setLogLevel:kGAILogLevelVerbose];
        
        // Initialize tracker.
        _tracker = [[GAI sharedInstance] trackerWithTrackingId:@"UA-48019855-1"];

    }
    return self;
}

- (void)dealloc {
    // Should never be called
    // We're working with ARC over here
}
@end
