//
//  main.m
//  coin
//
//  Created by gaurav on 28/02/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <math.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    
        int count = 1;
        double result;
        while(count < 10)
        {
            result = rand()/(double)RAND_MAX;
            if(result <= 0.5)
                NSLog(@"Heads");
            else
                NSLog(@"Tails");
            count++;
        }
        
    
    return 0;
}
}
