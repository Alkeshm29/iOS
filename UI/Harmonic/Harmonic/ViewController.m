//
//  ViewController.m
//  Harmonic
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


- (IBAction)btn:(id)sender {
    NSString * a=_txt.text;
    int b=[a intValue];
    double harmonicNum=0;
    if (b==0)
        [self.lbl setText:@"Enter Valid Num"];
    
    else{
        for(int i=1;i<=b;i++)
        {
            harmonicNum=harmonicNum+(1.0f/i);
        }
        [self.lbl setText: [NSString stringWithFormat:@"%0.4f",harmonicNum]];
    }
    
    
    
    
}
@end
