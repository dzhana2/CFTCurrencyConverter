//
//  CurrencyDatasource.m
//  CV
//
//  Created by Student on 12.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import "CurrencyDatasource.h"
#import "AppContext.h"
#import "RequestHelper.h"

static NSString * REUSE_ID = @"reuseID";

@implementation CurrencyDatasource {
}

- (instancetype) initWithContext:(AppContext *) appContext {
    self = [super init];
    _currencyManager = appContext.currencyManager;
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_currencyManager.arrayWithCurrencies count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:REUSE_ID];
    
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier: REUSE_ID];
    }
    Currency * result = [_currencyManager.arrayWithCurrencies objectAtIndex:indexPath.row];
    //if (_currencyManager.baseCurrency.code == result.code) {
        cell.textLabel.text = result.name;
        cell.detailTextLabel.text = result.code;
    RequestHelper * requestHelper = [[RequestHelper alloc] initWithAppContext:(SettingsReader *)^appConfig apiMethod:(NSString *)apiMethod params:(NSDictionary *) params;
    
    
    
   // }
    
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    _selectedCurrency = [_currencyManager.arrayWithCurrencies objectAtIndex:indexPath.row];
}

@end



