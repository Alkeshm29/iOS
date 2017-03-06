//
//  main.m
//  Array
//
//  Created by gaurav on 01/03/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //NSArray *array = [NSArray array];
        //NSLog(@"%@",array);
    
        //https://ios.eezytutorials.com/nsarray-by-example.php#.WLeXiRLyvox
        
        //Copy:
        NSArray *array1 = [NSArray arrayWithObject:@"A"];
        NSLog(@"%@",array1);

        NSArray *tempArray = [NSArray arrayWithObjects:@"A",@"B",@"c",nil];
        // Check if the two array objects refer to same objects. It shouldn't.
        NSArray *array =  [[NSArray alloc]initWithArray:tempArray copyItems:YES];
        NSLog(@"%@",array);
        //Count
        NSLog(@"Count: %lu",[array count]);
        //First Obj
        NSLog(@"First Object: %@", [array firstObject]);
        NSLog(@"Last Object: %@", [array lastObject]);
        //At Index
        NSLog(@"Object at index 2: %@", [array objectAtIndex:1]);
        //InRange
        indexSetWithIndexesInRange:NSMakeRange(1, 2);
        NSLog(@"%@",array);
        
        NSLog(@"Index of B is %lul",[array indexOfObject:@"B"]);
        
        
        //http://rypress.com/tutorials/objective-c/data-types/nsarray
        
        NSArray *germanMakes = @[@"Mercedes-Benz",@"BMW",@"Audi", @"Porsche",@"Opel", @"Volkswagen"];
        // With fast-enumeration
        for (NSString *item in germanMakes)
            NSLog(@"%@", item);
        
        // With a traditional for loop
        for (int i=0; i<[germanMakes count]; i++)
            NSLog(@"%d: %@", i, germanMakes[i]);
        // Comparism
        NSArray *sameGermanMakes = [NSArray arrayWithObjects:@"Mercedes-Benz",@"BMW",@"Audi", @"Porsche", @"Opel",@"Volkswagen", nil];
        
        if ([germanMakes isEqualToArray:sameGermanMakes])
            NSLog(@"arrays are the same as NSArrays");
        
        //Membership Checking
        if ([array containsObject:@"B"])
            NSLog(@"B is Present");
        
        // Index checking
        NSUInteger index = [germanMakes indexOfObject:@"BMW"];
        //if (index == NSNotFound) {}-->NSNotFound is inbhilt Method
        //Subdividing Arrays
        NSArray *lastTwo = [germanMakes subarrayWithRange:NSMakeRange(4, 2)];
        NSLog(@"%@", lastTwo);
        //Combinig the array
        NSArray *allMakes = [germanMakes arrayByAddingObjectsFromArray:array];
        NSLog(@"%@", allMakes);
        
        //String Conversion (split in java)
        NSLog(@"%@", [germanMakes componentsJoinedByString:@", "]);
    }
    return 0;
}
