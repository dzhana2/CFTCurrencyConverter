//
//  AppDelegate.m
//  CV
//
//  Created by Student on 29.10.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    _appCreator = [[AppCreator alloc] initWithConfigName:@"config.plist"];
    return YES;
    
}

@end
