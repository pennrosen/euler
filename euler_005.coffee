# Problem 5
# =========
# 
# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.
# 
# What is the smallest number that is evenly divisible by all of the numbers
# from 1 to 20?

primeProduct = 19*17*13*11*7*3*2
#solution must be divisible by the product of all primes < 20

divisible = (n) ->
	return true if n % 20 == 0 and 
		n % 18 == 0 and 
		n % 16 == 0 and 
		n % 15 == 0 and 
		n % 14 == 0 and 
		n % 12 == 0
	return false

#iterating by primeProduct makes the search much faster
for testNum in [primeProduct..1000000000] by primeProduct
    if divisible(testNum)
    	# TODO: return your answer for this prompt.
    	return testNum