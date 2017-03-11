//
//  ViewController.h
//  Filp_Coin_Factor
//
//  Created by gaurav on 02/03/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtflip;

- (IBAction)btnFlip:(id)sender;


@property (weak, nonatomic) IBOutlet UILabel *lblTailPer;
@property (weak, nonatomic) IBOutlet UILabel *lblHeadper;

@property (weak, nonatomic) IBOutlet UITextField *txtFactor;

- (IBAction)btnFactor:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *lblFactor;

@end

