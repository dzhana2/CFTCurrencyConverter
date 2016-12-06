//
//  HistoryViewController.m
//  CV
//
//  Created by Student on 26.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import "HistoryViewController.h"

@interface HistoryViewController ()

@end

@implementation HistoryViewController {

    id<protocolForCloseChangeWindow> delegate;

}

-(HistoryViewController *) initWithDelegate:(id<protocolForCloseChangeWindow>)aDelegate {
    self = [super initWithNibName:nil bundle:nil];
    delegate = aDelegate;
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"История курса";
}

@end
