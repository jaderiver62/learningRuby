combination = -> (n) do
    -> (r) do
        factorial = ->(m) { (1..m).inject(:*) }
        if(n < r)
            0
        elsif(n == r || r == 0)
            1
        else
        factorial[n] / (factorial[r] * factorial[n - r])
        end
    end
end
n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)
