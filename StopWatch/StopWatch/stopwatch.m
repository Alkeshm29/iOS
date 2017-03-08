#import <Foundation/Foundation.h>
#import "stopwatch.h"

@implementation StopWatch

double starttime;
double stoptime;
double elapsetime;
bool running=false;

-(void)starttime
{
    NSTimeInterval timeinsec=[[NSDate date] timeIntervalSince1970];
    starttime=timeinsec;
    running=true;
}

-(void)stoptime
{
   NSTimeInterval timeinsec2=[[NSDate date] timeIntervalSince1970];
    stoptime=timeinsec2;
    running=false;
}
-(void)calculatetime
{
    if(running==false)
    {
        elapsetime=stoptime-starttime;
        int sec=elapsetime;
        if(sec<=60)
        {
            printf("\nTime Elapsed: %d second..\n",sec);
        }
        else if (sec>60)
        {
            int min=(sec/60);
            int a=min*60;
            int b=sec-a;
            printf("\nTime Elapsed: %d minute and %d second..\n",min,b);
        }
    }
}

@end
