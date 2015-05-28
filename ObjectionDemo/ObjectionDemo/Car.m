//
//  Car.m
//  ObjectionDemo
//
//  Created by lijunjie on 5/28/15.
//  Copyright (c) 2015 lijunjie. All rights reserved.
//

#import "Car.h"

@implementation Car

objection_requires(@"engine", @"brakes")
//objection_requires_sel(@selector(engine), @selector(brakes))
objection_register_singleton(Car)
@synthesize engine, brakes, awake;
- (void)awakeFromObjection {
    awake = YES;
}
@end
