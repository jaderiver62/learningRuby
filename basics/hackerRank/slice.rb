def take(arr, slice_length=1)
    len = arr.length
    return [] if slice_length >= len
    arr[-(len - slice_length)..-1]
end

# take - Returns first n elements from enum.
a = [1, 2, 3, 4, 5, 0]
a.take(3)             #=> [1, 2, 3]
a.take(30)    #=> [1, 2, 3, 4, 5, 0]



# Write a method named full_name that generates the full names of people 
# given their first name, followed by some variable number of middle names, 
# followed by their last name.

def full_name(f_name,*rest,l_name)
    a = rest.reduce(f_name){|x,y| "#{x} #{y}"}
    "#{a} #{l_name}"
end

# I pass in f_name as the initial value to the reduce method 
# -- otherwise, it would receive the first value in rest. 
# Then the reduce method iterates over each element in rest 
# and combines it with the next element. So let's say the first 
# name is Bob and the rest is Allen Tim. I'd have x as Bob and y
#  as Allen on the first iteration and return Bob Allen, 
#  which is then assigned to x on the second iteration and 
#  combined with y, which is now the next element in rest - 
#  Tim. So I end up with Bob Allen Tim and just return a 
#  string with that + whatever last name was passed in.