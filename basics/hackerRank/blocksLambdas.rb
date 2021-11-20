# taken from  https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/
# Documented for my own reference
# Written by  By Jesus Castello


def explicit_block(&block)
    block.call # same as yield
  end
  explicit_block { puts "Explicit block called" }
# Notice the &block parameter…
# That’s how you define the block’s name!

# If you try to yield without a block you will get a no block given (yield) error.
# You can check if a block has been passed in with the block_given? method.
def do_something_with_block
    return "No block given" unless block_given?
    yield
end

# A lambda is a way to define a block & its parameters with some special syntax.
# You can save this lambda into a variable for later use.
# The syntax for defining a Ruby lambda looks like this:
say_something = -> { puts "This is a lambda" }
# Defining a lambda won’t run the code inside it, just like defining a method won’t run the method, you need to use the call method for that.
say_something = -> { puts "This is a lambda" }
say_something.call

# "This is a lambda"
say_something = -> { puts "This is a lambda" }
say_something.call

# There are other ways to call a lambda, it’s good to know they exist, however, I recommend sticking with call for clarity.
my_lambda = -> { puts "Lambda called" }
my_lambda.call
my_lambda.()
my_lambda[]
my_lambda.===

# Lambdas can also take arguments, here is an example:
times_two = ->(x) { x * 2 }
times_two.call(10)
# 20

