# Problem 17
# ==========
# 
# If the numbers 1 to 5 are written out in words: one, two, three, four,
# five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# 
# If all the numbers from 1 to 1000 (one thousand) inclusive were written
# out in words, how many letters would be used?
# 
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
# forty-two) contains 23 letters and 115 (one hundred and fifteen) contains
# 20 letters. The use of "and" when writing out numbers is in compliance
# with British usage.

ones = [ 
	"",
	"one",
	"two",
	"three",
	"four",
	"five",
	"six",
	"seven",
	"eight",
	"nine"
]

teens = [
	"ten",
	"eleven",
	"twelve",
	"thirteen",
	"fourteen",
	"fifteen",
	"sixteen",
	"seventeen",
	"eighteen",
	"nineteen"
]

tens = [ 
	"",
	"",
	"twenty",
	"thirty",
	"forty",
	"fifty",
	"sixty",
	"seventy",
	"eighty",
	"ninety"
]

#sum the lengths of all strings in array
Array::all = ->
	sum = 0
	sum += str.length for str in @
	return sum

andLength = 3 #length of "and"
oneThousandLength = 8 + 3 #length of "onethousand"

#sum of lengths of all numbers from 1-99
upTo99 = (ones.all() * 9) + teens.all() + (tens.all() * 10)

#sum of lengths of all "#{x}hundredand" where x is ones[]
xHundredAnd = 0
for x in [1..9]
	xHundredAnd += (ones[x].length + 7 + andLength) * 100 - andLength

#add 'em all up
upTo1000 = xHundredAnd + (upTo99 * 10) + oneThousandLength

# TODO: return your answer for this prompt.
return upTo1000