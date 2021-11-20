def sum_terms(n)
    (1..n).reduce(0) {|sum, val| sum += (val * val + 1)}
end
       # For a series of non-negative integers up to n, compute the sum of all terms after each has been squared and 1 added.

       def func_any(hash)
        hash.any?{|a, b| a.is_a? Integer}
    end
    
    def func_all(hash)
        hash.all?{|a, b| b.is_a?(Integer) && b < 10}
    end
    
    def func_none(hash)
        hash.none?{|a, b| b.nil?}
    end
    
    def func_find(hash)
        hash.find do |a, b| 
            (a.is_a?(Integer) && b.is_a?(Integer) && b < 20) || 
            (a.is_a?(String) && b.is_a?(String) && b.start_with?('a'))
        end
    end