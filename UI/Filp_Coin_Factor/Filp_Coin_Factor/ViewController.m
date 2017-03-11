//
//  ViewController.m
//  Filp_Coin_Factor
//
//  Created by gaurav on 02/03/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import "ViewController.h"
#import "math.h"
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


- (IBAction)btnFlip:(id)sender {
    NSString *a=_txtflip.text;
    int b=[a intValue];
    
    int count = 1;
    double result;
    int h=0,t=0;
    while(count < b)
    {
        result = rand()/(double)RAND_MAX;;
        if(result <= 0.5)
            h++;
        else
            t++;
        
        count++;
    }
    float headper=(h/b)*100;
    float tailper=100-headper;
   
    [self.lblHeadper setText:[NSString stringWithFormat:@"%0.2f",headper]];
    
    [self.lblTailPer setText:[NSString stringWithFormat:@"%0.2f",tailper]];
    
}
- (IBAction)btnFactor:(id)sender {
    NSString *factor =_txtFactor.text;
    int fct=[factor intValue];
    int i = 1;
    NSMutableArray *ab=[[NSMutableArray alloc]init];
    
    while(i<=fct)
    {
        if(fct%i == 0)
        [ab addObject:[NSString stringWithFormat:@"%d",i]];
       // [self.lblFactor setText:[NSString stringWithFormat:@"%d,",i]];
        i++;
    }
   // NSString *str =[NSString stringWithFormat:@"%@",ab];
   // 	[self.lblFactor setText:str];
    NSString *greeting = [ab componentsJoinedByString:@", "];

    [self.lblFactor setText:[NSString stringWithFormat:@"%@,",greeting]];
    //NSLog(@"dfgdfdf%@",str);
    
}

@end
