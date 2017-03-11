//
//  ViewController.m
//  Leap
//
//  Created by gaurav on 02/03/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Btn:(id)sender {
    NSString *a=_txt.text;
    
    int b=[a intValue];
    if (b%4==0 || b%400==0) {
        if(b%100!=0)
        [self.Lbl setText:[NSString stringWithFormat:@"%@ Leap  yr",a]];
    }
    else
        [self.Lbl setText:[NSString stringWithFormat:@"Not Leap"]];
}
@end
