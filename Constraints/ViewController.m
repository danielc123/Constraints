//
//  ViewController.m
//  Constraints
//
//  Created by cice on 1/2/17.
//  Copyright © 2017 cice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Creadas 2 vistas Padre e hija y añadida la hija dentro de padre
    UIView *vistaHija = [[UIView alloc] init];
    UIView *vistaPadre = self.view;
    vistaHija.translatesAutoresizingMaskIntoConstraints = false;
    vistaHija.backgroundColor = [UIColor redColor];
    [vistaPadre addSubview:vistaHija];
    
    // Añadidos 4 constraints Ancho y alttura hija igual padre y CenterX y CenterY
    [vistaPadre addConstraint:[NSLayoutConstraint constraintWithItem:vistaPadre attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:vistaHija attribute:NSLayoutAttributeWidth multiplier:1 constant:0]];
    
    [vistaPadre addConstraint:[NSLayoutConstraint constraintWithItem:vistaPadre attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:vistaHija attribute:NSLayoutAttributeHeight multiplier:1 constant:0]];
    
    [vistaPadre addConstraint:[NSLayoutConstraint constraintWithItem:vistaPadre attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:vistaHija attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    
    [vistaPadre addConstraint:[NSLayoutConstraint constraintWithItem:vistaPadre attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:vistaHija attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
