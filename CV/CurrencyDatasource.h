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


@interface CurrencyDatasource : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, readonly) Currency * selectedCurrency;

@end
