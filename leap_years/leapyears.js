
// Print out all the leap years in the last 100 years.
for (var leapyears=1918; leapyears < 2018; ++leapyears) {
  if (!(leapyears%4)&&(leapyears%100)||!(leapyears%400) ) console.log(leapyears);
}


//For numbers between 1 and 200, print out multiples of 7.
for (var num1=1; num1 <= 200; num1++) {
  if( num1 % 7 === 0 ) {
    console.log(num1);
  }
}


//For numbers between 1 and 200, print out every second odd number
for (var num2=1; num2 <= 200; num2++) {
  if( num2 % 2 !=0 ){
    console.log(num2=num2+2);
  }
}
