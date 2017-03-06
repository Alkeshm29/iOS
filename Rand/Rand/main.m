//
//  main.m
//  Rand
//
//  Created by gaurav on 28/02/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int r=arc4random();
        NSLog(@"Num is %d",r);
    }
    return 0;
}
