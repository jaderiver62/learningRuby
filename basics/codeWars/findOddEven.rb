def find_outlier(integers)
    test = Array.new(integers.select{|a| a.odd?})
    test2 = Array.new(integers.select{|b| b.even?})
    return test[0] if test2.length() > test.length()
    return test2[0] if test.length() > test2.length()
end