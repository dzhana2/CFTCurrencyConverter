//
//  TableView.m
//  CV
//
//  Created by Student on 05.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import "TableView.h"


@interface TableView ()

@end

@implementation TableView {

    id<protocolForCloseChangeWindow> delegate;
    IBOutlet UITableView * currencyTable;
    
}

-(TableView *) initWithDelegate:(id<protocolForCloseChangeWindow>)aDelegate {
    self = [super initWithNibName:nil bundle:nil];
    delegate = aDelegate;
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
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Окно выбора валюты";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
