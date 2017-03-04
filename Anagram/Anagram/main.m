//
//  main.m
//  Anagram
//
//  Created by gaurav on 27/02/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        char char1[20],char2[20];
        NSLog(@"Enter Char");
        scanf("%s",char1);
        NSLog(@"Enter char2");
        scanf("%s",char2);
        NSString *str1=[NSString stringWithFormat:@"%s",char1];
        NSString *str2=[NSString stringWithFormat:@"%s",char2];
        
        NSLog(@"str1 is %@",str1);
        NSLog(@"str2 is %@",str2);
        
        //NSInteger i,j;
        int i,j;
        Boolean flag=true;
        //boolean_t flag=true;
        i=[str1 length];
        j=[str2 length];
        
        NSLog(@"len is %d",i);
        
        if (i==j)
        {
            for (int k=0; k<i; k++)
            {
                for (int l=0; l<j; j++)
                {
                    if([str1 characterAtIndex:k]==[str2 characterAtIndex:l])
                    {
                        flag=true;
                        break;
                    }
                    else
                        flag=false;
                }
            }
        }
        else
            flag=false;
        
        if(flag)
            NSLog(@"String is Anagram");
        else
            NSLog(@"String is not Angram");
        
    }
    return 0;
}
