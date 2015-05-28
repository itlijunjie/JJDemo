//
//  ViewController.m
//  ObjectionDemo
//
//  Created by lijunjie on 5/26/15.
//  Copyright (c) 2015 lijunjie. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "ExternalProtocol.h"
#import "ConfigurableCar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    JSObjectionInjector *injector = [JSObjection createInjector];
//    Car *car = [[JSObjection defaultInjector] getObject:NSClassFromString(@"Car")];
//    id car = [injector getObject:[Car class]];
//    car;
//    car.awake = NO;
//    id car1 = [[JSObjection defaultInjector] getObject:NSClassFromString(@"Car")];
//    car1;
    // Do any additional setup after loading the view, typically from a nib.
    
//    id <ExternalProtocol> a = [[JSObjection defaultInjector] getObject:@protocol(ExternalProtocol)];
//    a;
//    
//    [a a];
//    id <ExternalProtocol> b = [[JSObjection defaultInjector] getObject:@protocol(ExternalProtocol)];
//    [b a];
    ConfigurableCar *car = [[JSObjection defaultInjector] getObjectWithArgs:[ConfigurableCar class], @"VW", @"Passat", nil];
    NSLog(@"Make: %@ Model: %@", car.make, car.model);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
