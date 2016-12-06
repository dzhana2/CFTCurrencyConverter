//
//  AppCreator.h
//  CV
//
//  Created by Student on 03.12.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AppContext;

@interface AppCreator : NSObject

@property(nonatomic, strong, readonly) AppContext * appContext;

-(instancetype) initWithConfigName:(NSString *) configFileName;
-(instancetype) init NS_UNAVAILABLE;

@end
