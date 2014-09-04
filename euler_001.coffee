# Problem 1
# =========
# 
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.
sum = 0
sum += z for z in [1..999] when (z % 3 is 0) or (z % 5 is 0)

# TODO: return your answer for this prompt.
return sum