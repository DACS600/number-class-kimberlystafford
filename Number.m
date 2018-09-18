#import "Number.h"

@implementation Number

-(id) init
{
  self = [super init];

  if (self)
  {
    num = 0;
  }

  return self;
}

-(void) setNumber: (int) n
{
  num = n;
  printf("%i is the value of your number \n", num);
}

-(Boolean) isEven {
  if (num % 2 == 0) { //no remainder, means even
    return true;
  }
  return false;
}

-(Boolean) isPrime {
  Boolean yn = true;
  if (num == 1){ //exception case
    return true;
  }
  for (int i=2 ; i < num; i++){
    if (num % i == 0){ //means it is not prime, has a factor
      yn = false;
    }
  }
  return yn;
}
-(void) sumOfDigits {
  int num1 = num;
  int placeholder = 0;
  while (num1 != 0){
    int digit = num1 % 10;
    placeholder = placeholder + digit;
    num1 = num1 / 10;
  }
  NSLog (@"The sum of digits is %i", placeholder);
}

-(void) numberOfDigits {
  int num2 = num;
  int counter = 0;
  while (num2!=0){
    counter = counter + 1;
    num2 = num2 / 10;
  }
  NSLog (@"There are %i digits", counter);
}

- (void) largestDigit {
  int p, large = 0, num3 = num;
  while (num3 > 0){
    p = num3 % 10;
    if (large < p){
      large = p;
    }
    num3 = num3/10;
  }
  NSLog (@"The largest digit is %i", large);
}

-(Boolean) isPerfectSquare {
  for (int i = 1; i < num+1; i++){ //need to add +1 for exception case, 1.
    if (i*i == num){
      return true;
    }
  }
  return false;
}

-(void) nearestPerfectSquare {
  int p = 1;
  int temp;
  int lowestDiff = num;
  for (int i = 1; i < num/2+1; i++){ ////need to add +1 for exception case, 1.
    temp = num - (i*i);
    if (i*i == num){
      p = i;
    } else if ((i*i)<num){
      if (temp<lowestDiff){
        lowestDiff = temp;
        p = i;
      }
    }
  }
  NSLog (@"The nearest perfect square is %i", p);
}

/* Mr. Bakker- I tried doing an inBinary extension that converts the number into binary, but I had
trouble with the recursion running. My error was "implicit declaration of function 'inBinary' is invalid in C99".
I wanted to show you to see if you perhaps could see why it wasn't working.
-(int) inBinary {
  int n = num;
  int counter = 1;
  int answer;
  if (n==1){
    answer "1";
  } else if (n!=1){
    return inBinary (n/2) + n%2;
    answer = answer + pow (10,counter);
    counter = counter + 1;
  }
  NSLog (@"The number in Binary is %i", answer);
  return 0;
}
*/

@end
