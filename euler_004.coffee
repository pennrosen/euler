# Problem 4
# =========
# 
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 * 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

palindromeArray = []

Number::isPalindrome = ->
	s = @.toString()
	s.split("").reverse().join("") is s

Array::max = -> Math.max.apply null, @

for x in [0..200]
	factor1 = 999 - x
	for y in [0..200]
		factor2 = 999 - y
		product = (factor1 * factor2)
		if product.isPalindrome()
			palindromeArray.push(product)             

# TODO: return your answer for this prompt.
return palindromeArray.max()