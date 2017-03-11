//
//  ViewController.m
//  Gamler
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


- (IBAction)btnPlay:(id)sender {
    NSString *stack=_txtStack.text;
    NSString *goal=_txtGoal.text;
    NSString *trial=_txtTrial.text;
    int stk=[stack intValue];
    int gol=[goal intValue];
    int trl=[trial intValue];
    
    int win=0;
    int loss=0;

    for (int i=0; i<trl; i++)
    {
        int cash=stk;
        while (cash>0 && cash<gol)
        {
            
            float random = rand()/(float)RAND_MAX;
            
            if (random<0.5)
            {
                cash++;
            }
            else
            {
                cash--;
            }
        }
        if (cash==gol)
        {
            win++;
        }
        else{
            loss++;
        }
    }

    float per_win=100*(float)((float)win/(float)trl);
    float per_loss=100*(float)((float)loss/(float)trl);
    
    [self.lblWIn setText:[NSString stringWithFormat:@"%0.2f Win",per_win]];
    
    [self.lblLoss setText:[NSString stringWithFormat:@"%0.2f Loss",per_loss]];
    
}
@end
