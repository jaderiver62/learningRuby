#!/usr/bin/env ruby
# Above line is a special line
# Under a Unix-like operating system tells the shell how to run the file.
class MegaGreeter
    attr_accessor :names
  
    # Create the object
    def initialize(names = "World")
      @names = names
    end
  
    # Say hi to everybody
    def say_hi
      if @names.nil?
        puts "..."
      elsif @names.respond_to?("each")
        # @names is a list of some kind, iterate!
        @names.each do |name|
          puts "Hello #{name}!"
        end
      else
        puts "Hello #{@names}!"
      end
    end
  
    # Say bye to everybody
    def say_bye
      if @names.nil?
        puts "..."
      elsif @names.respond_to?("join")
        # Join the list elements with commas
        puts "Goodbye #{@names.join(", ")}.  Come back soon!"
      else
        puts "Goodbye #{@names}.  Come back soon!"
      end
    end
  end
  
  
  if __FILE__ == $0
    # __FILE__ is the magic variable that contains the name of the current file. $0 is the name of the file used to start the program. This check says “If this is the main file being used…” This allows a file to be used as a library, and not to execute code in that context, but if the file is being used as an executable, then execute that code.
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye
  
    # Change name to be "Zeke"
    mg.names = "Zeke"
    mg.say_hi
    mg.say_bye
  
    # Change the name to an array of names
    mg.names = ["Albert", "Brenda", "Charles",
                "Dave", "Engelbert"]
    mg.say_hi
    mg.say_bye
  
    # Change to nil
    mg.names = nil
    mg.say_hi
    mg.say_bye
  end