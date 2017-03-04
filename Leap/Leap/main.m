//
//  main.m
//  Leap
//
//  Created by gaurav on 28/02/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Check leap year or not");
        
        NSLog(@"\nEnter the year : ");
        
        int year;
        scanf("%d",&year);
        
        if(year%400 == 0 && year%4 == 0)
            NSLog(@"%d is a leap year",year);
        
        else
            NSLog(@"%d is not a leap year",year);
        
    }
}
