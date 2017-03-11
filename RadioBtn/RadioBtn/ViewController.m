//
//  ViewController.m
//  RadioBtn
//
//  Created by gaurav on 09/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

//
//  ViewController.m
//  checkBox
//
//  Created by gaurav on 09/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setImage:[UIImage imageNamed:@"unchecked.png"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"checked.png"] forState:UIControlStateSelected];
    
    [button addTarget:self action:@selector(aMethod) forControlEvents:UIControlEventTouchUpInside];
    
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.frame = CGRectMake(80.0, 210.0, 150.0, 150.0);
    
    //    button.layer.cornerRadius=button.frame.size.width/2;
    //    button.layer.borderColor=[UIColor blackColor].CGColor;
    //    button.layer.borderWidth=1.0f;
    
    [self.view addSubview:button];
    
    [self.seconButton setImage:[UIImage imageNamed:@"unchecked.png"] forState:UIControlStateNormal];
    
    [self.seconButton setImage:[UIImage imageNamed:@"checked.png"] forState:UIControlStateSelected];
    
}

-(void)aMethod{
    
    if (button.state==1) {
        
        [button setSelected:YES];
        
    }else{
        
        [button setSelected:NO];
    }
}
- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)secondButtonPressed:(id)sender
{
    if (self.seconButton.state==1) {
        [self.seconButton setSelected:YES];
    }else{
        [self.seconButton setSelected:NO];
    }
}
@end
