//
//  ColorViewController.m
//  HomeTaskUI_03_colors
//
//  Created by Kate Polyakova on 4/28/15.
//  Copyright (c) 2015 Kate Polyakova. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()

@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = self.color;

    UIGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapOnView:)];
    [self.view addGestureRecognizer:gestureRecognizer];
}

- (IBAction)didTapOnView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
