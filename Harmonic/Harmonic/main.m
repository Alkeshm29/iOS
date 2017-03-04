//
//  main.m
//  Harmonic
//
//  Created by gaurav on 28/02/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        int num,i;
        double value = 0;
        NSLog(@"Please Enter N");
        scanf("%d",&num);
        if(num==0)
            NSLog(@"Value of N can not be zero");
        else{
            for(i=1;i<=num;i++){
                value = value + (1.0f/i);
            }
            NSLog(@"Harmonic value of %d is %f",num,value);
        }
    
    }
    return 0;
}
