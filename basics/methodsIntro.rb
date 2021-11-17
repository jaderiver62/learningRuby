def prime?(number)
    Prime.prime?(number)
end

# same as

def prime?(number)
    return true if number == 2 || number == 3
    return false if number == 1 || number % 2 == 0 || number % 3 == 0 
    i = 5
    j = 2
    while i*i <= number
        return false if number % i == 0
        i += j
        j = 6 - j
    end
    return true
end