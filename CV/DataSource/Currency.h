//
//  Currency.h
//  CV
//
//  Created by Student on 12.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Currency : NSObject

@property (nonatomic, readonly) NSString * code;
@property (nonatomic, readonly) NSString * name;

+ (instancetype) currencyWithCode:(NSString *) code name:(NSString *) name;
- (instancetype) initWithCode:(NSString *) code name: (NSString *) name;
- (instancetype) init NS_UNAVAILABLE;

@end
