//
//  main.m
//  NSMutable
//
//  Created by gaurav on 04/03/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *mt;
        mt=[NSMutableArray arrayWithObject:@"AB"];
        [mt addObject:@"A"];
        [mt addObject:@"B"];
        
        NSLog(@"Mutable array is:%@",mt);
        [mt insertObject:@"c" atIndex:3];
        [mt insertObject:@"d" atIndex:4];
        NSLog(@"Mutable array is:%@",mt);
        
        NSInteger i;
        for(i=0;i<5;i++)
        {
            [mt insertObject:@"AAABBB" atIndex: i];
        }
        [mt insertObject:@"BBBB" atIndex:8];
        
        NSLog(@"Mt=%@",mt);
        int c = [mt count];
        //Dispaly Array elements
        for (i = 0; i < c; i++)
        NSLog (@"Element %ul = %@", i, [mt objectAtIndex: i]);
       
        [mt removeObject:@"d"];
        [mt removeObjectAtIndex:5];
        
        NSLog(@"Afertr Reemove%@",mt);
        //Sorted Array
        NSArray *sortedArray;
        sortedArray = [mt sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
                       NSLog(@"Sorted Array:%@",sortedArray);
    }
    return 0;
}
