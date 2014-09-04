# Problem 7
# =========
# 
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
# 
# What is the 10001st prime number?

targetPrime = 10001
arbitrarilyLargeLimit = 100000000
arrayOfPrimes = []

isPrime = (n) ->
	a = n
	b = 2
	while b <= Math.floor(Math.sqrt(a))
		if a % b == 0 then return false else b += 1
	return true

for testNum in [1..arbitrarilyLargeLimit] by 2 #no need to test evens
	arrayOfPrimes.push testNum if isPrime(testNum)
	break if arrayOfPrimes[targetPrime - 1] in arrayOfPrimes

#just for semantics since we started at 1 :)
arrayOfPrimes[0] = 2 

# TODO: return your answer for this prompt.
return arrayOfPrimes[(targetPrime - 1)]