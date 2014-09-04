# Problem 9
# =========
# 
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for
# which,
#                              a^2 + b^2 = c^2
# 
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

limit = 1000
$solution = 0
squares = []

squareOf = (n) -> n * n
root = (n) -> Math.sqrt(n)

#populate array of squares
squares.push squareOf num for num in [0..limit]

#brute force solution
for x in [0..limit]
	for y in [0..limit]

		#define triplets
		a = squares[limit - x]
		b = squares[y]
		c = squares[limit - x] - squares[y]

		#iterate through array of squares and test for prompt
		for square in squares by -1 #iterating backwards is faster :)
			if c == square and root(a) + root(b) + root(c) == 1000
				$solution = root(a) * root(b) * root(c)
				break

# TODO: return your answer for this prompt.
return $solution