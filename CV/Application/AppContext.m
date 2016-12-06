//
//  AppContext.m
//  CV
//
//  Created by Student on 03.12.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import "AppContext.h"
#import "SettingsReader.h"
#import "CurrencyManager.h"

@implementation AppContext

-(instancetype) initWithConfig: (NSString *)configFileName {
    
    self = [super init];
    
    _appSettings = [[SettingsReader alloc ] initWithConfigName:configFileName];
    _currencyManager = [[CurrencyManager alloc] initWithConfigFile:configFileName];
    
    return self;
    
}

-(instancetype) init{
    assert(NO);
    return nil;
}

@end
