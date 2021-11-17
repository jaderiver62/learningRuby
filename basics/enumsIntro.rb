def sum_terms(n)
    (1..n).reduce(0) {|sum, val| sum += (val * val + 1)}
   END
       # For a series of non-negative integers up to n, compute the sum of all terms after each has been squared and 1 added.