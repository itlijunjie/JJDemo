//
//  ExternalEx.m
//  ObjectionDemo
//
//  Created by lijunjie on 5/28/15.
//  Copyright (c) 2015 lijunjie. All rights reserved.
//

#import "ExternalEx.h"

@implementation ExternalEx
objection_register_singleton(ExternalEx)
+ (void)a
{
    NSLog(@"aaa");
}
@end
