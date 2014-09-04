# Problem 6
# =========
# 
# The sum of the squares of the first ten natural numbers is,
#                        1^2 + 2^2 + ... + 10^2 = 385
# 
# The square of the sum of the first ten natural numbers is,
#                     (1 + 2 + ... + 10)^2 = 55^2 = 3025
# 
# Hence the difference between the sum of the squares of the first ten
# natural numbers and the square of the sum is 3025 - 385 = 2640.
# 
# Find the difference between the sum of the squares of the first one
# hundred natural numbers and the square of the sum.

givenLimit = 100

sumOfSquares = ->
	total = 0
	for x in [1..givenLimit]
		total += x * x
	return total

squareOfSums = ->
	total = 0
	for x in [1..givenLimit]
		total += x
	return total * total           

difference = squareOfSums() - sumOfSquares()

# TODO: return your answer for this prompt.
return difference