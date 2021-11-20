array = ['a', 'b', 'c']

for i in 0...array.size do
  puts array[i]
end

# a
# b
# c
# #  => 0...3
# Simple, given a string of words, return the length of the shortest word(s).
# String will never be empty and you do not need to account for different data types.
def find_short(s)
    array = s.split(" ")
    # Divide the sentence using spaces as the delimiter
    l = array[0].length()
    # Find the first word's length to compare values
    for i in 1...array.size do
      # Iterate through the rest of the word's length values
      if array[i].length() < l 
        # If the length of the current word is less than the stored value store it in l 
        l = array[i].length()
      end
    end
    return l
  end

  # Alternate of same code... So many ways to solve shorter than my code!

  def find_short(s)
    s.split.map(&:size).min
  end

  def find_short(s)
    l = s.split.min_by(&:length).size
    return l
  end
  def find_short(s)
    return s.split(' ').map(&:length).min
  end
  def find_short(s)
  words = s.split(" ")
  shortest_word = words[0]
  words.each do |word|
    if word.length < shortest_word.length
      shortest_word = word
    end
  end
  return shortest_word.length
end

def find_short(s)
    z = s.split" "
    l = []
    z.each do |x|
    l << x.length
    end
   l.sort!

 
 l[0]
end

def find_short(s)
    return l = (s.split(" ").map { |n| n.length }).min
end
def find_short(s)
    s.split.inject(Float::INFINITY) { |s, v| s>v.length ? s=v.length : s=s }
end

def find_short(s)
    # your code here
    s.scan(/\w+/).min_by(&:length).length
    # return l # l: length of the shortest word
end

def find_short(s)
    s.split.inject(Float::INFINITY) { |s, v| s>v.length ? s=v.length : s=s }
end

def find_short(s)     
    s.split.min {|x,y| x.size <=> y.size}.length
end

def find_short(s)
    arr = s.split
  arr1 = arr.sort{|x, y| x.length <=> y.length}
  
  return arr1[0].length
end

def find_short(s)
    s.split.sort_by(&:length).first.length
end