//
//  main.m
//  Triple
//
//  Created by gaurav on 28/02/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int arr[20],n;
        NSLog(@"Enter Num");
        scanf("%d",&n);
        NSLog(@"Enter elements");
        for (int i = 0; i < n; i++) {
            scanf("%d",&arr[i]);
        }
        for (int i = 0; i < n; i++) {
            for (int j = i + 1; j < n; j++) {
                for (int k = j + 1; k < n; k++) {
                    if (arr[i] + arr[j] + arr[k] == 0) {
                        NSLog(@"Given pair is Tripl %d %d %d",arr[i],arr[j],arr[k]);
                    }
                    
                }
            }
        }
        
        
    }
    return 0;
}
