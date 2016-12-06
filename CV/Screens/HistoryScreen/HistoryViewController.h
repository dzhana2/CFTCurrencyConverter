//
//  HistoryViewController.h
//  CV
//
//  Created by Student on 26.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "protocolForCloseChangeWindow.h"

@interface HistoryViewController : UIViewController <UITableViewDelegate>

-(HistoryViewController *) initWithDelegate: (id<protocolForCloseChangeWindow>)aDelegate;

@end
