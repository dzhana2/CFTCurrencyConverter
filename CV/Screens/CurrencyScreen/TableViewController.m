//
//  TableViewController.m
//  CV
//
//  Created by Student on 05.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import "TableViewController.h"
#import "AppContext.h"


@interface TableViewController ()

@end

@implementation TableViewController {

    id<protocolForCloseChangeWindow> delegate;
    IBOutlet UITableView * currencyTable;
    CurrencyDatasource * dataSource;
    
    void(^completionHandler)(Currency *currency);

}

/*-(TableViewController *) initWithDelegate:(id<protocolForCloseChangeWindow>)aDelegate {
    self = [super initWithNibName:nil bundle:nil];
    delegate = aDelegate;
    return self;
}*/

-(instancetype) initWithAppContext:(AppContext *) appContext {
    self = [super initWithNibName:nil bundle:nil];
    _appContext = appContext;
    return self;
}

-(void)configureNavigationItem {
    UIBarButtonItem * doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Готово"
                                                                    style: UIBarButtonItemStyleDone
                                                                   target:self
                                                                   action: @selector(doneTapped)];
    self.navigationItem.rightBarButtonItem = doneButton;
}

-(void) doneTapped {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Выбор валюты";
    dataSource = [[CurrencyDatasource alloc]initWithContext:_appContext];
    currencyTable.dataSource = dataSource;
    currencyTable.delegate = dataSource;
    [self configureNavigationItem];
    
}

@end
