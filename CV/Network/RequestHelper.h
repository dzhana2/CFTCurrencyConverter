//
//  RequestHelper.h
//  CV
//
//  Created by Student on 21.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

@class SettingsReader;
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RequestHelper : NSObject

@property (nonatomic, copy) void (^responseHandler) (RequestHelper * response);
@property (nonatomic, nullable, copy) void (^failureHandler) (NSError * error);

-(instancetype) initWithAppContext:(SettingsReader *) appConfig apiMethod:(NSString *)apiMethod params:(NSDictionary *) params;

- (instancetype) init NS_UNAVAILABLE;

NS_ASSUME_NONNULL_END

@end
