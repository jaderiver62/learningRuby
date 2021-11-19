# There isn’t a constant with the name Infinity, as shown by the NameError that we encountered when trying to access it directly. But it is available as the constant Float::INFINITY. Let’s take a closer look at it.

Inf = 1/0.0      #=> Infinity
Inf.class        #=> Float
Float::INFINITY  #=> Infinity

# Negative infinity
- 1.0/0  #=> -Infinity

Inf = 1.0/0   #=> Infinity
Inf + 42      #=> Infinity
Inf / 42      #=> Infinity
Inf - 42      #=> Infinity
Inf * 42      #=> Infinity

# Addition/multiplication of two infinite values also results in infinity
Inf = 1.0/0  #=> Infinity
Inf + Inf    #=> Infinity
Inf * Inf    #=> Infinity

# Comparisons
Inf > 0       #=> true
Inf == Inf    #=> true
Inf != Inf    #=> false

# Large float operations result in infinity
2**10000        #=> big number with 3011 digits
2**10000 + 0.1  #=> Infinity

# Check if a number is infinite
Inf.infinite?   #=> true
(1.0).infinite? #=> false

# Ruby 2.0 introduced Enumerator::Lazy , a special type of enumerator which helps us in processing chains of operations on a collection without actually executing it instantly. By applying Enumerable#lazy method on any enumerable object, we can convert that object into Enumerator::Lazy object.
# Enumerator::Lazy can be constructed from any Enumerable with the Enumerable
# lazy method.

# Lazy evaluation, or call-by-need, means the value of an variable is evaluated when it is needed, which is a opposite concept of call-by-name, or eager evaluation

# First:
a = [ "q", "r", "s", "t" ]
a.first     #=> "q"
a.first(2)  #=> ["q", "r"]

