# select() public
# Returns a new array containing all elements of arrayy for which the given block returns a true value.

# If no block is given, an Enumerator is returned instead.

require 'prime'

palindrome_array = -> (n) do
    Prime.lazy.select { |x| x if x.to_s == x.to_s.reverse}.first(n)
end

n = gets.to_i

n = gets.to_i 
# gets is your user's input. Also, it's good to know that * gets means "get string" and puts means "put string". That means these methods are dealing with Strings only.
# .to_i :  Gets gives you a string with a new line. Gets.chomp gets you just a string. But since to_i makes that string into an int, I don't believe there's a difference since ints don't have spaces or new lines

p palindrome_array.(n)