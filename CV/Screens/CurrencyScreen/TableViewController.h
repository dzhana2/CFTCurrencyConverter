//
//  TableViewController.h
//  CV
//
//  Created by Student on 05.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "protocolForCloseChangeWindow.h"
#import "CurrencyDatasource.h"
#import "AppContext.h"

@interface TableViewController : UIViewController <UITableViewDelegate>

@property (nonatomic, readonly) AppContext * appContext;

//-(instancetype) initWithContext:(AppContext *) appContext;

-(instancetype) initWithAppContext:(AppContext *) appContext;

//-(TableViewController *) initWithDelegate: (id<protocolForCloseChangeWindow>)aDelegate;

@end
