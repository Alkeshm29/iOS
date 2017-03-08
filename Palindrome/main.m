#import <Foundation/Foundation.h>
#import "Palindrome.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Palind *pl =[[Palind alloc]init];
        char input[20];
        printf("\nEnter String :\n");
        scanf("%s",input);
      
        [pl getString:input];
        [pl result:input];
       
        
    }
    return 0;
}
