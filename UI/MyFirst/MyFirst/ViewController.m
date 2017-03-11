//
//  ViewController.m
//  MyFirst
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
    [self.lbl setText:[NSString stringWithFormat:@"%@",_lbl]];
    
}
@end
