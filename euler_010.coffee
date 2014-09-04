# Problem 10
# ==========
# 
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.

limit = 2000000
arrayOfPrimes = []

#sums all elements in array
sumOf = (array) -> array.reduce (x, y) -> x + y

#returns true if n is prime
isPrime = (n) ->
    a = n
    b = 2
    while (b <= Math.floor(Math.sqrt(a)))
        if (a % b == 0) then return false else (b += 1)
    return true

#populate array of primes
for x in [1..limit] by 2 #by 2 to skip evens
    arrayOfPrimes.push x if isPrime(x)

#we started populating array at 1, remember?
arrayOfPrimes[0] = 2

# TODO: return your answer for this prompt.
return sumOf(arrayOfPrimes)