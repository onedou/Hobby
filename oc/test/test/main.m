//
//  main.m
//  test
//
//  Created by 陈燎 on 14/09/2017.
//  Copyright © 2017 陈燎. All rights reserved.
//

#import <Foundation/Foundation.h>

//----- @interface section ------

@interface Fraction: NSObject
{
    int numberator;
    int denominator;
}

-(void) print;
-(void) setNumberator: (int) n;
-(void) setDenominator: (int) d;

@end

//----- @implementation section -----

@implementation Fraction

-(void) print
{
    NSLog(@"%i%i", numberator, denominator);
}

-(void) setNumberator:(int)n
{
    numberator = n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSMutableString *outstring = [NSMutableString string];
        
        NSString *myText  = @"Hello";
        NSString *myText2 = @"22222";
        
        [outstring appendFormat:@"%@ %@\n", myText, myText2];
        
        NSLog(@"%@", outstring);
        
    }
    return 0;
}
