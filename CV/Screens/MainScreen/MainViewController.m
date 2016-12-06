//
//  MainViewController.m
//  CV
//
//  Created by Student on 26.11.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import "MainViewController.h"
#import "TableViewController.h"
#import "HistoryViewController.h"

@interface MainViewController () <UITextFieldDelegate>

@end

@implementation MainViewController

{
    IBOutlet UITextField * inputMoney;
    IBOutlet UITextField * resultMoney;
    IBOutlet UILabel *selectedCurrency;
    IBOutlet UILabel *baseCurrency;
    IBOutlet UILabel *infoAboutExchangeRates;
    float result;
}

-(instancetype) initWithContext:(AppContext *)appContext {
    _appContext = appContext;
    return self;
}

- (void) tapButtonConvert:(NSString *) value {
    //result = value.floatValue * CONVERT;
    //NSLog(@"converted value %2f", result);
    //resultLabel.text = [NSString stringWithFormat:@"%2f", result];
}

- (IBAction) tapButtonChoiceMoney {
 //   typeof(self) __weak weakSelf = self;
    TableViewController * currentTableViewController = [[TableViewController alloc] initWithAppContext:_appContext ];
    [self.navigationController pushViewController:currentTableViewController animated:YES];
    
}


-(IBAction) tapButtonReadHistory {
    HistoryViewController *currentHistoryViewController = [[HistoryViewController alloc] initWithDelegate:self];
    [self.navigationController pushViewController:currentHistoryViewController animated:YES];
}

- (void) didSelect {
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string; {
    NSString * newResult = inputMoney.text;
    newResult = [newResult stringByReplacingCharactersInRange:range withString: string];
    [self tapButtonConvert:newResult];
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    inputMoney.delegate = self;
    self.title = @"Обмен валюты";
    baseCurrency.text = _appContext.currencyManager.baseCurrency.code;
    selectedCurrency.text = [_appContext.currencyManager selectedCurrency].code;
    //infoAboutExchangeRates.text = [NSString stringWithFormat: infoAboutExchangeRates.text,  @" 1 ", baseCurrency.text];;
}

@end
