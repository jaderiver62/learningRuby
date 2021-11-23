# Remove the spaces from the string, then return the resultant string.

def no_space(x)
    x
end

def no_space(x)
    x.gsub(" ","")
end

def no_space(x)
  x.gsub(/\s/,"")
end

def no_space(x)
    x.split(" ").join
end