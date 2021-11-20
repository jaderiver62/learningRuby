# n this challenge, your task is to code a process_text method, which takes an array of strings as input and returns a single joined string with all flanking whitespace and new lines removed. Each string has to be separated by a single space.

# > process_text(["Hi, \n", " Are you having fun?    "])
# "Hi, Are you having fun?"

def process_text(array)
    array[0].chomp.strip + ' ' + array[1].strip
end