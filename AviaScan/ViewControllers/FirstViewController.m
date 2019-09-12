//
//  FirstViewController.m
//  AviaScan
//
//  Created by Sergey on 11/09/2019.
//  Copyright © 2019 Sergey. All rights reserved.
//

#import "FirstViewController.h"
#import "SettingsViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
 
#pragma    Создание кнопки в NavigationBar для открытия настроек
    
    UIBarButtonItem* settingsButton = [[UIBarButtonItem alloc] initWithTitle: @"Settings"
                                                                       style: UIBarButtonItemStyleDone
                                                                      target: self
                                                                      action: @selector(openSettings)];
    self.navigationItem.rightBarButtonItem = settingsButton;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    
#pragma    Слайдер
    
    CGRect frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2-100.0, [UIScreen mainScreen].bounds.size.height/2-25.0, 200.0, 50.0);
    UISlider *slider = [[UISlider alloc] init];
    slider.frame = frame;
    slider.tintColor = [UIColor blackColor];
    slider.value = 0.5;
    [self.view addSubview:slider];
    
//    [self.dataManager loadData];
}
#pragma Активация селектора для открытия настроек (Actions)

- (void) openSettings {
    SettingsViewController* settingsViewController = [SettingsViewController new];
    [self.navigationController pushViewController: settingsViewController animated: YES];
}


@end
