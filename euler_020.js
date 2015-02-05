// Problem 20
// ==========
// 
// n! means n * (n - 1) * ... * 3 * 2 * 1
// 
// Find the sum of the digits in the number 100!

var givenNum = 100;
var bigInt = require("big-integer");
var product = bigInt("1", 10);
var sum = 0;

// calculate 100 factorial
for (var x = givenNum; x > 0; x--) {
  product = product.multiply(x);
};

// split the product into an array of its digits
var digitArray = product.toString().split("");

// sum the array of digits
for (var y = 0; y < digitArray.length; y++) { 
  sum += parseInt(digitArray[y], 10);
};

// TODO: return your answer for this prompt.
return sum;
