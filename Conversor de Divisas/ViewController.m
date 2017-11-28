//
//  ViewController.m
//  Conversor de Divisas
//
//  Created by Eduardo de la Cruz on 28/11/17.
//  Copyright © 2017 Eduardo de la Cruz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// MARK: - Global Variables

const float EUR_TO_DOLAR = 1.18955; // Constante
const float EUR_TO_POUNDS = 0.895408355;
const float EUR_TO_YEN = 132.304527;

// MARK: - ViewController life cicle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// MARK: - Buttons Actions

- (IBAction)convertirDolarButtonPressed:(UIButton *)sender
{
    float euroValue = [self.euroTextField.text floatValue];
    float dolarValue = euroValue * EUR_TO_DOLAR;
    
    [self.resultLabel setText: [NSString stringWithFormat: @"%.2f EUR = %.2f USD", euroValue, dolarValue]];
    self.resultLabel.hidden = NO;
}

- (IBAction)convertirLibrasButtonPressed:(UIButton *)sender
{
    float euroValue = [self.euroTextField.text floatValue];
    float poundValue = euroValue * EUR_TO_POUNDS;
    
    [self.resultLabel setText: [NSString stringWithFormat: @"%.2f EUR = %.2f GBP", euroValue, poundValue]];
    self.resultLabel.hidden = NO;
}

- (IBAction)convertirYenButtonPressed:(UIButton *)sender
{
    float euroValue = [self.euroTextField.text floatValue];
    float yenValue = euroValue * EUR_TO_YEN;
    
    [self.resultLabel setText: [NSString stringWithFormat: @"%.2f EUR = %.2f JPY", euroValue, yenValue]];
    self.resultLabel.hidden = NO;
}

@end
