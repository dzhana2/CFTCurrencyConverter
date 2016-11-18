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

-(instancetype) init {

    self = [super init];
    NSMutableArray* arrayWithCurrencies = [[NSMutableArray alloc] init];
    
    [arrayWithCurrencies addObject:[Currency currencyWithCode:@"USD" name:@"Доллар США"]];
    [arrayWithCurrencies addObject:[Currency currencyWithCode:@"RUB" name:@"Рубль"]];
    [arrayWithCurrencies addObject:[Currency currencyWithCode:@"GPB" name:@"Фунт стерлингов"]];

    _arrayWithCurrencies = [arrayWithCurrencies copy];
        
    return self;
}

- (Currency *)defaultCurrency {
    return _arrayWithCurrencies.firstObject;
}

@end
