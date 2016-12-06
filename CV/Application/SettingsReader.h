//
//  AppCreator.h
//  CV
//
//  Created by Student on 03.12.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingsReader : NSObject

@property (nonatomic, readonly) NSURL * exchangeRateURL;
@property (nonatomic, readonly) BOOL useRemoteExchangeRates;
@property (nonatomic, readonly) NSString * baseCurrencyCode;
@property (nonatomic, readonly) NSString * baseCurrencyName;
@property (nonatomic, readonly) NSArray * currencyList;

-(instancetype) initWithConfigName:(NSString *)configFileName;
-(instancetype) init NS_UNAVAILABLE;

@end
