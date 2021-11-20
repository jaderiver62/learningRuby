
# Ruby 2.0 introduced Enumerator::Lazy , a special type of enumerator which helps us in processing chains of operations on a collection without actually executing it instantly. By applying Enumerable#lazy method on any enumerable object, we can convert that object into Enumerator::Lazy object.
# Enumerator::Lazy can be constructed from any Enumerable with the Enumerable
# lazy method.

# Lazy evaluation, or call-by-need, means the value of an variable is evaluated when it is needed, which is a opposite concept of call-by-name, or eager evaluation

power_array = -> (power, array_size) do 
    1.upto(Float::INFINITY).lazy.map { |x| x**power }.first(array_size) 
end

puts power_array.(2 , 4)    #[1, 4, 9, 16]
puts power_array.(2 , 10)   #[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
puts power_array.(3, 5)     #[1, 8, 27, 64, 125]

# If we remove lazy from the above code, then our code would try to compute all  ranging from  to Float::INFINITY.

# Now, our code will only compute up to first(array_size).


# First:
a = [ "q", "r", "s", "t" ]
a.first     #=> "q"
a.first(2)  #=> ["q", "r"]

# Your task is to print an array of the first  palindromic prime numbers.
