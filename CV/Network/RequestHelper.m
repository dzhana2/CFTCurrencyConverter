//
//  RequestHelper.m
//  CV
//
//  Created by Student on 21.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import "RequestHelper.h"
#import "SettingsReader.h"


@implementation RequestHelper {
    NSURLSession * session;
    NSURLSessionDataTask * dataTask;
    
    NSString * method;
    NSURL * dataURL;
    NSDictionary * requestParams;
}

-(instancetype) initWithAppContext:(SettingsReader *) appConfig apiMethod:(NSString *)apiMethod params:(NSDictionary *) params {
    
    assert(nil != appConfig);
    assert(nil != apiMethod);
    
    self = [super init];
    session = [NSURLSession sharedSession];
    dataURL = appConfig.exchangeRateURL;
    method = [apiMethod copy];
    
    if (nil != params) {
        requestParams = [params copy];
    }
    
    return self;
    
}
    
- (void) execute {
    assert (NULL != _responseHandler);
    NSURL * requestURL = [self makeURL];
    typeof(self) __weak weakSelf = self;
    dataTask = [session dataTaskWithURL:requestURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        [weakSelf processData:data error:error];
    }];
    [dataTask resume];
}

- (NSURL * ) makeURL {
    dataURL = [[NSURL alloc] initWithString: @"http://api.fixer.io"];
    NSURLComponents * components = [[NSURLComponents alloc] initWithURL: dataURL resolvingAgainstBaseURL:NO];
    components.path = method;
     //@"/latest?base=USD";*/
    
    if (nil != requestParams) {
        NSMutableArray *queryItems = [[NSMutableArray alloc] init];
        for (NSString * key in requestParams) {
            NSURLQueryItem *item = [NSURLQueryItem queryItemWithName:key value:requestParams[key]];
            [queryItems addObject:item];
        }
     
     components.queryItems = queryItems;
    }
    
    return [components URL];
}

-(void) processData:(NSData *) data error:(NSError *) error {
    if (nil != error) {
        [self handleError:error];
        return;
    }
    if (nil != data) {
        NSError * error = nil;
        id response = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        if(nil !=error) {
            [self handleError:error];
            return;
        }
    }
}

-(void) handleError:(NSError *)error {
    if (NULL != _failureHandler) {
        _failureHandler(error);
    }
}

- (instancetype) init {
    assert(NO);
    return nil;
}

@end


//UIAlertController + Alert & ActionSheet
