def count_multibyte_char(string)
    count = 0
    
    string.each_char do |char|
        count += 1 if char.bytesize > 1
    end
    
    return count
end