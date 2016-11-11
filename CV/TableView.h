//
//  TableView.h
//  CV
//
//  Created by Student on 05.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "protocolForCloseChangeWindow.h"

@interface TableView : UIViewController
@property(strong, nonatomic) NSArray *dataSourse;
-(TableView *) initWithDelegate: (id<protocolForCloseChangeWindow>)aDelegate;

@end
