#import <Foundation/Foundation.h>
#import "PowerOf2.h"

@implementation PowerOf2

-(void)GetInput
{
    NSLog(@"Please enter the number=");
    scanf("%d",&number);
}
-(void)Calculate
{
    if(number>=0 && number<31)
    {
        result=1;
    
        for(int i=0;i<=number;i++)
        {
            NSLog(@"2^%d is :%d",i,result);
        
            result=(result*2);
        }
    }else
    NSLog(@"Please enter correct number");
}
@end
