//
//  AppContext.h
//  CV
//
//  Created by Student on 03.12.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CurrencyManager;
@class SettingsReader;

@interface AppContext : NSObject

@property (nonatomic, strong, readonly) SettingsReader * appSettings;
@property (nonatomic, strong, readonly) CurrencyManager *currencyManager;

-(instancetype) initWithConfig:(NSString *) configFileName;
-(instancetype) init NS_UNAVAILABLE;

@end
