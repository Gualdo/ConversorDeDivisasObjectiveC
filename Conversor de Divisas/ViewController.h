//
//  ViewController.h
//  Conversor de Divisas
//
//  Created by Eduardo de la Cruz on 28/11/17.
//  Copyright © 2017 Eduardo de la Cruz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// MARK: - Outlets

@property (weak, nonatomic) IBOutlet UITextField *euroTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

// MARK: - Actions

- (IBAction)convertirDolarButtonPressed:(UIButton *)sender;
- (IBAction)convertirLibrasButtonPressed:(UIButton *)sender;
- (IBAction)convertirYenButtonPressed:(UIButton *)sender;

@end

