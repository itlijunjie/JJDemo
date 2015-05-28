//
//  ConfigurableCar.m
//  ObjectionDemo
//
//  Created by lijunjie on 5/28/15.
//  Copyright (c) 2015 lijunjie. All rights reserved.
//

#import "ConfigurableCar.h"

@implementation ConfigurableCar
//objection_requires(@"engine", @"brakes")
objection_initializer(initWithMake:model:)

@synthesize make = _make;
@synthesize model = _model;

- (id)initWithMake:(NSString *)make model:(NSString *)model {
    self = [super init];
    if (self) {
        self.make = make;
        self.model = model;
    }
    return self;
}
@end
