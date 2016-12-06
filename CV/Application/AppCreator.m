//
//  AppCreator.m
//  CV
//
//  Created by Student on 03.12.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import "AppCreator.h"
#import "AppContext.h"
#import "MainViewController.h"

@implementation AppCreator {
    UIWindow * mainWindow;
}

-(instancetype) initWithConfigName:(NSString *)configFileName {
    self = [super init];
    _appContext = [[AppContext alloc] initWithConfig:configFileName];
    [self createWindow];
    
    return self;
}

-(void)createWindow {
    mainWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    MainViewController * mainViewController = [[MainViewController alloc] initWithContext:_appContext];
    UINavigationController * navigationController = [[UINavigationController alloc] initWithRootViewController:mainViewController];
    navigationController.navigationBar.translucent = NO;
    mainWindow.rootViewController = navigationController;
    [mainWindow makeKeyAndVisible];
}

-(instancetype) init{
    assert(NO);
    return nil;
}

@end
