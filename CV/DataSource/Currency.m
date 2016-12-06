//
//  Currency.m
//  CV
//
//  Created by Student on 12.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import "Currency.h"

@implementation Currency

-(instancetype)initWithCode:(NSString *)code name:(NSString *)name {
    _code = [code copy];
    _name = [name copy];
    return self;
}

-(instancetype) init {
    assert(NO);
    return nil;
}

+ (instancetype) currencyWithCode:(NSString *)code name:(NSString *)name {
    Currency * result = [[Currency alloc] initWithCode:code name:name];
    return result;
}

@end
