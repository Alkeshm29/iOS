//
//  main.m
//  ArrayPractice
//
//  Created by gaurav on 03/03/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger a[4] ;
        NSInteger i;
        for(i=0;i<4;i++)
        {
            a[i]=i;
        NSLog(@"NSInt Array=%lu",a[i]);
        }
        NSString *b[4];
        
        
        for(i=0;i<4;i++)
        {
            b[i]=@"AB";
            NSLog(@"String Array=%lu-%@",i,b[i]);
        }
        
        NSArray *ab;
        ab=[NSArray arrayWithObject:@""];
        NSLog(@"NSArray is:");
        
        ab=[NSArray arrayWithObject:@"1"];
        NSLog(@"NSArray is1:%@",ab);
        
        ab=[NSArray arrayWithObject:@"2"];
        NSLog(@"NSArray is2:%@",ab);
        //overlap the value
        for(i=0;i<4;i++)
        {
            //ab=[NSArray arrayWithObject:@"NS"];//single value dont write "s" i.e WithObjects
            NSLog(@"NSArray=%lu-%@",i,ab);
        }

        NSMutableArray *mt;
        for(i=0;i<4;i++)
        {
            [mt addObject:@"A"];
            [mt addObject:@"B"];
            
            NSLog(@"Mutable Array=%lu-%@",i,mt);
        }
        
    }
    return 0;
}
