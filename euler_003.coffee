# Problem 3
# =========
# 
# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143?

givenNum = 600851475143

largestPrimeFactorOf = (x) ->
	a = x
	b = 2
	while (b <= Math.floor(Math.sqrt(a)))
		if (a % b == 0) then (a /= b) else (b += 1)
	return a

# TODO: return your answer for this prompt.
return largestPrimeFactorOf(givenNum)