//
//  ViewController.h
//  UtilityUI
//
//  Created by gaurav on 09/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txttotal;

@property (weak, nonatomic) IBOutlet UITextField *txtNum;

@property (weak, nonatomic) IBOutlet UITextField *txtsearch;

- (IBAction)BtnBinaryInt:(id)sender;
- (IBAction)BtnInsertionInt:(id)sender;

- (IBAction)BtnBubbleInt:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *lblOut;

@property (weak, nonatomic) IBOutlet UIImageView *imgvive;

- (IBAction)btntrans:(id)sender;








@end

