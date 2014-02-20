//
//  InterfaceDimValues.h
//  MobileAnaltyicsBase
//
//  Created by Sinziana Gafitanu on 2/20/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InterfaceDimValues : NSObject

typedef enum _InterfaceObjectTypes {
    kUnknownValue = 0,
    kSimpleLabel,
    kSimpleTextBox,
    kSimpleSwitch
} InterfaceObjectTypes;

// For all
extern int const UI_DIM_UPPER_LIMIT;
extern int const UI_DIM_LEFT_BUFFER;
extern int const UI_DIM_LINE_HEIGHT;

// Label
extern int const UI_DIM_LABEL_WIDTH;

// Text Box
extern int const UI_DIM_TEXT_BOX_WIDTH;

+ (CGRect) getFrameFor:(InterfaceObjectTypes) type andOrder:(int) order;


@end
