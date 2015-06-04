//
//  BindingModule.m
//  ObjectionDemo
//
//  Created by lijunjie on 5/28/15.
//  Copyright (c) 2015 lijunjie. All rights reserved.
//

#import "BindingModule.h"
#import "ExternalProtocol.h"
#import "ExternalEx.h"
#import "ConfigurableCar.h"

@implementation BindingModule

+ (void)load
{
    JSObjectionInjector *injector = [JSObjection defaultInjector];
    injector = injector ? : [JSObjection createInjector];
    injector = [injector withModule:[[self alloc] init]];
    [JSObjection setDefaultInjector:injector];
}

- (void)configure
{
    [self bindMetaClass:[ExternalEx class] toProtocol:@protocol(ExternalProtocol)];
    [self registerEagerSingleton:[ExternalEx class]];
}

@end
