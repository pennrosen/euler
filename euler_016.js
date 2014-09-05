// Problem 16
// ==========
// 
// 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
// 
// What is the sum of the digits of the number 2^1000?

//More BigInts! Uses BigInteger.js via node.
//	Install with npm: "npm install big-integer"
//	then include 'var bigInt = require("big-integer");'

var bigInt = require("big-integer");
var product = bigInt("2", 10);

for (var i = 1; i < 1000; i++) {
	product = product.multiply(2);
};

var charArray = product.toString().split('');

var sum = 0;
for (var i = 0; i < charArray.length; i += 1){
	sum += parseInt(charArray[i], 10);
}

//TODO: return your answer for this prompt.
return sum;