//
//  CurrencyManager.m
//  CV
//
//  Created by Student on 12.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import "CurrencyManager.h"
#import "Currency.h"

@implementation CurrencyManager

-(instancetype) initWithConfigFile:(NSString *)configFileName {

    self = [super init];
    NSMutableArray* arrayWithCurrencies = [[NSMutableArray alloc] init];
    //NSMutableDictionary * baseCurrencyInfo = [[NSMutableDictionary alloc] initWithContentsOfFile:@"Users/student/Desktop/CV/CV/BaseCurrency.plist"];
    
    [arrayWithCurrencies addObject:[Currency currencyWithCode:@"USD" name:@"Доллар США"]];
    [arrayWithCurrencies addObject:[Currency currencyWithCode:@"RUB" name:@"Рубль"]];
    [arrayWithCurrencies addObject:[Currency currencyWithCode:@"GBP" name:@"Фунт стерлингов"]];
    [arrayWithCurrencies addObject:[Currency currencyWithCode:@"AUD" name:@"Австралийский доллар"]];

    _arrayWithCurrencies = [arrayWithCurrencies copy];
    
    return self;
}

- (Currency *)defaultCurrency {
    return _arrayWithCurrencies.firstObject;
}

-(instancetype) init{
    assert(NO);
    return nil;
}

@end
