//
//  ViewController.m
//  UtilityUI
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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)BtnBinaryInt:(id)sender {

    //   NSString *totalstr=_txttotal.text;
    NSString *numstr=_txtNum.text;
    NSString *serchstr=_txtsearch.text;

    int key=[serchstr intValue];
    
    NSArray *listItems = [numstr componentsSeparatedByString:@" "];
    
    NSLog(@"%@",listItems);
    int l=[listItems count];
    NSLog(@"@=============%d",l);
    
    int num[10];
    for(int i=0;i<l;i++)
    {
        num[i]=[[listItems objectAtIndex: i]intValue];
    }
    
    //***************
    int i,f=0,low,high,mid;
    low=1;
    high=l;
    while(low<=high)
    {
        mid=(low+high)/2;
        if(key<num[mid])
        {
            high=mid-1;
        }
        else if(key>num[mid])
        {
            low=mid+1;
        }
        else
        {
            f=1;
             [self.lblOut setText:[NSString stringWithFormat:@"Elemnt at index %d ",mid]];
            break;
        }
    }
        if(f==0)
        {
            [self.lblOut setText:[NSString stringWithFormat:@"Elemnt is found Not present"]];
            
        }
    
    ////    for (NSNumber *n in listItem) {
////        int num = [n intValue];
////        }

}

- (IBAction)BtnInsertionInt:(id)sender {

    //NSString *totalstr=_txttotal.text;
    NSString *numstr=_txtNum.text;
    //NSString *serchstr=_txtsearch.text;
    
   // int key=[serchstr intValue];
    
    NSArray *listItems = [numstr componentsSeparatedByString:@" "];
    
    NSLog(@"%@",listItems);
    int l=[listItems count];
    NSLog(@"@=============%d",l);
    
    int num[10];
    for(int i=0;i<l;i++)
    {
        num[i]=[[listItems objectAtIndex: i]intValue];
    }
//#####
    
     int i,j,temp;
     for(i=1;i<l;i++){
         temp=num[i];
         j=i-1;
         while((temp<num[j])&&(j>=0)){
             num[j+1]=num[j];
             j=j-1;
         }
         num[j+1]=temp;
     }
    NSString *str = @"";
    for(int j=0;j<l;j++)
    {
        NSString *str1 = [NSString stringWithFormat:@"%d,",num[j]];
        str = [str stringByAppendingString:str1];
        
    }
    [self.lblOut setText:[NSString stringWithFormat:@"Sorted Order %@ ",str]];
 }
//******************Bubble***************************

- (IBAction)BtnBubbleInt:(id)sender {
    
   // NSString *totalstr=_txttotal.text;
     NSString *numstr=_txtNum.text;
    //NSString *serchstr=_txtsearch.text;
    
    // int key=[serchstr intValue];
    
    NSArray *listItems = [numstr componentsSeparatedByString:@" "];
    
    NSLog(@"%@",listItems);
    int l=[listItems count];
    NSLog(@"@=============%d",l);
    
    int num[10];
    for(int i=0;i<l;i++)
    {
        num[i]=[[listItems objectAtIndex: i]intValue];
    }
    
    //-----------------------
    int temp,i,j;
    for(i=l-2;i>=0;i--){
        for(j=0;j<=i;j++){
            if(num[j]<num[j+1]){
                temp=num[j];
                num[j]=num[j+1];
                num[j+1]=temp;
            }
        }
    }
    NSString *str = @"";
    for(int j=0;j<l;j++)
    {
        NSString *str1 = [NSString stringWithFormat:@"%d,",num[j]];
        str = [str stringByAppendingString:str1];
        
    }
    [self.lblOut setText:[NSString stringWithFormat:@"Sorted Order %@ ",str]];

}
- (IBAction)btntrans:(id)sender {
        static int numRot = 0;
        _imgvive.transform = CGAffineTransformMakeRotation(M_PI_2 * numRot);
        ++numRot;
    
}
@end
