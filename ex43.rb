class anotherGame

  def initialize(start)
    @msg = [
       "Better luck next time!",
       "Want to try again?",
       "You choose WRONG :p"
    ]
    @start = start
    puts "in the init @start =" + @start.inspect
  end

  def prompt()
    print "> "
  end


  def play()
     puts "@start =>" +@start.inspect
     next_room = @start


  end
end
