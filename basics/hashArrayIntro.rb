array = Array.new
array_1 = [nil]
array_2 = Array.new(2, 10)

hackerrank.store(543121,100)
hackerrank.keep_if{|key, value| key.is_a?Integer}
hackerrank.delete_if{|key, value| key%2 == 0}
def iterate_colors(colors)
    colors.enum_for.to_a
end
def iterate_colors(colors)
    colors.enum_for.to_a
end
def skip_animals(animals, skip)
    arr = []
    animals.each_with_index do |item, index|
        if(index >= skip)
            arr.push("#{index}:#{item}")
        end
    end
    return arr
end