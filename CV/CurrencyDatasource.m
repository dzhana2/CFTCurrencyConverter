//
//  CurrencyDatasource.m
//  CV
//
//  Created by Student on 12.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import "CurrencyDatasource.h"

static NSString * REUSE_ID = @"reuseID";

@implementation CurrencyDatasource {
    CurrencyManager * currencyManager;
}

- (instancetype) init {
    self = [super init];
    currencyManager = [[CurrencyManager alloc]init];
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [currencyManager.arrayWithCurrencies count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:REUSE_ID];
    
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier: REUSE_ID];
    }
    Currency * result = [currencyManager.arrayWithCurrencies objectAtIndex:indexPath.row];
    cell.textLabel.text = result.name;
    cell.detailTextLabel.text = result.code;
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    _selectedCurrency = [currencyManager.arrayWithCurrencies objectAtIndex:indexPath.row];
}

@end



