//
//  ViewController.h
//  FirstApp
//
//  Created by gaurav on 02/03/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *demoText;

@property (weak, nonatomic) IBOutlet UILabel *demoLabel;
@property (weak, nonatomic) IBOutlet UIButton *demoButton;
- (IBAction)demoABtn:(id)sender;

@end

