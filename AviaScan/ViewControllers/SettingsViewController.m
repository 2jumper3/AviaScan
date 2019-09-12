//
//  SettingsViewController.m
//  AviaScan
//
//  Created by Sergey on 11/09/2019.
//  Copyright © 2019 Sergey. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect labelFrame = CGRectMake(10.0, 10.0, [UIScreen mainScreen].bounds.size.width-80.0,
                                   [UIScreen mainScreen].bounds.size.height-80.0);
    UILabel *label = [[UILabel alloc] initWithFrame: labelFrame];
    label.font = [UIFont systemFontOfSize:24.0 weight:UIFontWeightBold];
    label.textColor = [UIColor darkGrayColor];
    label.textAlignment = NSTextAlignmentJustified;
    label.text = @"Hello, World!";
    [self.view addSubview: label];

}


@end
