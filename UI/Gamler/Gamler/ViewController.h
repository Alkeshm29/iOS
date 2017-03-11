//
//  ViewController.h
//  Gamler
//
//  Created by gaurav on 02/03/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtStack;
@property (weak, nonatomic) IBOutlet UILabel *lblWIn;
@property (weak, nonatomic) IBOutlet UITextField *txtGoal;
@property (weak, nonatomic) IBOutlet UITextField *txtTrial;
- (IBAction)btnPlay:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *lblLoss;


@end

