//
//  MainViewController.h
//  CV
//
//  Created by Student on 26.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "protocolForCloseChangeWindow.h"

@class AppContext;

@interface MainViewController : UIViewController <protocolForCloseChangeWindow>;

@property (nonatomic, readonly) AppContext * appContext;

-(instancetype) initWithContext:(AppContext *) appContext;
-(instancetype) init NS_UNAVAILABLE;

@end
