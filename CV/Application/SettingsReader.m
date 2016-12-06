//
//  settingsReader.m
//  CV
//
//  Created by Student on 03.12.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import "SettingsReader.h"

@implementation SettingsReader

-(instancetype)initWithAppContext: (NSString *) configFileName{
    assert (nil != configFileName);
    assert (NO == [configFileName isEqualToString:@""]);
    
    self = [super init];
    [self loadConfig:configFileName];
    
    return self;
}

-(void) loadConfig:(NSString *)configFileName {
    NSString* pathToConfigFile = [[NSBundle mainBundle] pathForResource:configFileName.stringByDeletingPathExtension
                                                                 ofType:configFileName.pathExtension];
    NSDictionary *content = [NSDictionary dictionaryWithContentsOfFile:pathToConfigFile];
    assert (nil !=content);
    
    _exchangeRateURL = [NSURL URLWithString:content[NSStringFromSelector(@selector(exchangeRateURL))]];
    _useRemoteExchangeRates = [content[NSStringFromSelector(@selector(useRemoteExchangeRates))] boolValue];
    _baseCurrencyCode = content[NSStringFromSelector(@selector(baseCurrencyCode))];
    _baseCurrencyName = content[NSStringFromSelector(@selector(baseCurrencyName))];
   // _currencyList = [NSArray arrayWithArray:content[]]
    
    
}

-(instancetype) init{
    assert(NO);
    return nil;
}

@end



