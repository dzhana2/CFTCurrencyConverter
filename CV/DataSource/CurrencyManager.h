//
//  CurrencyManager.h
//  CV
//
//  Created by Student on 12.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Currency.h"

@interface CurrencyManager : NSObject

@property (nonatomic, readonly) NSMutableArray * arrayWithCurrencies;
@property (nonatomic, readonly) Currency * baseCurrency;
@property (nonatomic, readonly) Currency * selectedCurrency;

-(instancetype) initWithConfigFile:(NSString *) configFileName;
-(instancetype) init NS_UNAVAILABLE;

@end
