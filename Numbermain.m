//
// main.m
// Fraction4
//
// Created by Ben Bakker on 9/18/15.
// Copyright © 2015 Ben Bakker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Number.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    Number *aNumber = [[Number alloc] init];

    //CHANGE NUMBER HERE
    [aNumber setNumber:129];


    if([aNumber isEven]){
      NSLog (@"it is even.\n");
    } else {
      NSLog (@"the number is odd\n");
    }

    if ([aNumber isPrime]){
      NSLog (@"it is prime. \n");
    } else {
      NSLog (@"it is not prime. \n");
    }

    [aNumber sumOfDigits];

    [aNumber numberOfDigits];

    [aNumber largestDigit];

    if ([aNumber isPerfectSquare]){
      NSLog (@"It is a perfect square.");
    } else {
      NSLog (@"It is not a perfect square.");
    }

    [aNumber nearestPerfectSquare];
    
  }
  return 0;
}
