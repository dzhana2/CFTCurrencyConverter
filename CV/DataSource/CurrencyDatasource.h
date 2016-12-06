//
//  CurrencyDatasource.h
//  CV
//
//  Created by Student on 12.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CurrencyManager.h"
#import "Currency.h"
#import "AppContext.h"


@interface CurrencyDatasource : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, readonly) Currency * selectedCurrency;
@property (nonatomic, readonly) CurrencyManager * currencyManager;

-(instancetype) initWithContext:(AppContext *) appContext;

@end
