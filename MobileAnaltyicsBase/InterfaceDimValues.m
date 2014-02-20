//
//  InterfaceDimValues.m
//  MobileAnaltyicsBase
//
//  Created by Sinziana Gafitanu on 2/20/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import "InterfaceDimValues.h"

@implementation InterfaceDimValues

// For all
const int UI_DIM_UPPER_LIMIT = 70; // Just enough to clear the back button title.
const int UI_DIM_LEFT_BUFFER = 20;
const int UI_DIM_LINE_HEIGHT = 40;
const int UI_DIM_BOX_HEIGHT = 30;

// Label
const int UI_DIM_LABEL_WIDTH = 100;

// Text Box
const int UI_DIM_TEXT_BOX_WIDTH = 200;
const int UI_DIM_LEFT_FOR_TEXT_BOX = 90;

// Switch
const int UI_DIM_LEFT_FOR_SWITCH = 140;
const int UI_DIM_SWITCH_WIDTH = 50;

// Unknown
const int UI_DIM_DEFAULT_WIDTH = 80;

+ (CGRect) getFrameFor:(InterfaceObjectTypes) type andOrder:(int) order{
    
    if(type == kSimpleLabel)
        return CGRectMake(UI_DIM_LEFT_BUFFER,
                          UI_DIM_UPPER_LIMIT + order * UI_DIM_LINE_HEIGHT,
                          UI_DIM_LABEL_WIDTH,
                          UI_DIM_BOX_HEIGHT);
    
    if(type == kSimpleTextBox)
        return CGRectMake(UI_DIM_LEFT_BUFFER + UI_DIM_LEFT_FOR_TEXT_BOX,
                          UI_DIM_UPPER_LIMIT + order * UI_DIM_LINE_HEIGHT,
                          UI_DIM_TEXT_BOX_WIDTH,
                          UI_DIM_BOX_HEIGHT);
    
    
    if(type == kSimpleSwitch)
        return CGRectMake(UI_DIM_LEFT_BUFFER + UI_DIM_LABEL_WIDTH + UI_DIM_LEFT_FOR_SWITCH,
                          UI_DIM_UPPER_LIMIT + order * UI_DIM_LINE_HEIGHT,
                          UI_DIM_SWITCH_WIDTH,
                          UI_DIM_BOX_HEIGHT);
    
    
    return CGRectMake(UI_DIM_LEFT_BUFFER,
                      UI_DIM_UPPER_LIMIT + order * UI_DIM_LINE_HEIGHT,
                      UI_DIM_DEFAULT_WIDTH,
                      UI_DIM_BOX_HEIGHT);
}


@end
