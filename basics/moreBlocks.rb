# inject() can take a block or a symbol, but map() always takes a block. 


# You can use a range & the each method to have more control over the starting & ending numbers.

# Example:

# (1..10).each { |i| puts i }
# This will print all the numbers from 1 to 10.

def factorial
    yield
end

n = gets.to_i 
# gets is your user's input. Also, it's good to know that * gets means "get string" and puts means "put string". That means these methods are dealing with Strings only.
# .to_i :  Gets gives you a string with a new line. Gets.chomp gets you just a string. But since to_i makes that string into an int, I don't believe there's a difference since ints don't have spaces or new lines
factorial do 
    puts (1..n).reduce(:*)
    # :* is the symbol name for the multiplication method.
    # The 'reduce' method can be used to take an array and reduce it to a single value. 
end
