#import <Foundation/Foundation.h>

@interface Number : NSObject
{
int num;
}

-(void) setNumber:(int) n;

-(Boolean) isEven;
-(Boolean) isPrime;
-(void) sumOfDigits;
-(void) numberOfDigits;
-(void) largestDigit;
-(Boolean) isPerfectSquare;
-(void) nearestPerfectSquare;

@end
