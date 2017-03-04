//
//  main.m
//  VendingMachin
//
//  Created by gaurav on 28/02/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    
        int rs[]={1000,500,100,50,20,10,5,2,1};
        
    //    int size=[rs length];
    
        int amount;
        int i=0;//rs.length+1;
        NSLog(@"Enter Ammount");
        scanf("%d",&amount);
        while(amount>0)
        {
            int count=0;
            while(rs[i]<=amount &&amount!=0)
            {
                amount=amount-rs[i];
                count++;
            }
            if(count>0)
            {
                NSLog(@"Required Changes :%d X %d=%d",rs[i],count,rs[i]*count);
            }
            i++;
            
        }
    
    }
    return 0;
}
