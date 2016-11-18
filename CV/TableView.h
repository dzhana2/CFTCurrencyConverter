//
//  TableView.h
//  CV
//
//  Created by Student on 05.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "protocolForCloseChangeWindow.h"
#import "CurrencyDatasource.h"

@interface TableView : UIViewController <UITableViewDelegate>

-(TableView *) initWithDelegate: (id<protocolForCloseChangeWindow>)aDelegate;

@end
