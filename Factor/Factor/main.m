//
//  main.m
//  Factor
//
//  Created by gaurav on 28/02/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Enter The Num");
        int num;
        scanf("%d",&num);
        int i = 1;
        
        while(i<=num)
        {
            if(num%i == 0)
                NSLog(@"%d is a factor",i);
            i++;
        }
    
    }
    return 0;
}
