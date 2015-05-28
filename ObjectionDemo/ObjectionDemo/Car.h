//
//  Car.h
//  ObjectionDemo
//
//  Created by lijunjie on 5/28/15.
//  Copyright (c) 2015 lijunjie. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Engine,Brakes;
@interface Car : NSObject
{
    Engine *engine;
    Brakes *brakes;
    BOOL awake;
}

@property(nonatomic, strong) Engine *engine;
@property(nonatomic, strong) Brakes *brakes;
@property(nonatomic) BOOL awake;

@end
