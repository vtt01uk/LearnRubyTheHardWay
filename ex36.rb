def prompt
  print "> "
end

def vi()
  puts "Opened vi editor"
  puts "You enter in <puts 'hello world'>,"
  puts "save it and run it..."
  puts "success~!"
  Process.exit(0)
end


def brackets()
  puts "Opening brackets now"
  puts "Oh no! your laptop battery died on you"
  puts "Good job slow couch!"
  Process.exit(0)
end

puts "You have less than 3 minutes to code a Ruby program"
puts "before you laptop battery dies!"
puts "what do you do?"
puts # a blank line
puts "1. Open vi"
puts "2. Open brackets"

prompt; action = gets.chomp

if action == "1"
  puts "opening vi in terminal now..."
  vi()
elsif action == "2"
  puts "opening brackets now..."
  brackets()
else
  timeout()
end




def timeout()
  puts "Oh dear, you have no more battery :("
  Process.exit(0)
end
