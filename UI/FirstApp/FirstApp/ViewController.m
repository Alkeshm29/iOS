//
//  ViewController.m
//  FirstApp
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


- (IBAction)demoABtn:(id)sender {
    NSString *a=@"B";
    
    [self.demoText setText:[NSString stringWithFormat:@"%@",a]];
    
    [self.demoButton setTitle:@"Hii Piii" forState:UIControlStateNormal];
    [self.demoLabel setText:@"Clicked"];

}
@end
