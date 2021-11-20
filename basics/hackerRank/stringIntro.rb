def single_quote
    'Hello World and others!'
end

def double_quote
  "Hello World and others!"
end

def here_doc
  <<-STUFF
    Hello World and others!
    STUFF
end

my_string = "Hello." # create a string from a literal
my_empty_string = String.new # create an empty string
my_copied_string = String.new(my_string) # copy a string to a new variable

# str = "With ♥!"
# print("My String's encoding: ", str.encoding.name) 
# print("\nMy String's size: ", str.size)
# print("\nMy String's bytesize: ", str.bytesize)

# My String's encoding: UTF-8
# My String's size: 7
# My String's bytesize: 9