//
//  ViewController.m
//  CV
//
//  Created by Student on 29.10.16.
//  Copyright © 2016 Student03.FS.ru.CFT. All rights reserved.
//

#import "ViewController.h"
#import "TableView.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

{
    IBOutlet UITextField *inputMoney;
    IBOutlet UILabel *resultLabel;
    float result;
}

- (void) tapButtonConvert:(NSString *) value {
    result = value.floatValue * CONVERT;
    //NSLog(@"converted value %2f", result);
    //resultLabel.text = [NSString stringWithFormat:@"%2f", result];
}

- (IBAction) tapButtonChangeMoney {
    TableView * currentTableView = [[TableView alloc] initWithDelegate:self];
    [self.navigationController pushViewController:currentTableView animated:YES];
    
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
    // Do any additional setup after loading the view, typically from a nib.
    inputMoney.delegate = self;
    self.title = @"Обмен валюты";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
