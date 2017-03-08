#import<Foundation/Foundation.h>

@interface DataRead : NSObject
{
    NSString *message;
    NSString *datepattern;
    NSString *currentdate;
    
}
-(void)setData:(NSString*)string;
-(void)dateDetect;
-(void)display:(NSString*)name andfullname:(NSString *)fname andmob:(NSString*)mob;
@end
