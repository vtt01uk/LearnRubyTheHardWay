class AnotherGame

  def initialize(start)
    @msg = [
       "Better luck next time!",
       "Want to try again?",
       "You choose WRONG :p"
    ]
    @start = start
    puts "in the init @start = " + @start.inspect
  end

  def prompt()
    print "> "
  end


  def play()
     puts "@start => " + @start.inspect
     next_room = @start
    while true
      puts  "\n---------"
      room = method(next_room)
      next_room = room.call()
    end
  end
  
  def death()
    puts @msg[rand(@msg.length())]
    Process.exit(1)
  end
  
#  def in_the_car()
#    puts "\n"
#    puts "-----------------------------------"
#    puts " T H E   O U T B R E A K "
#    puts "-----------------------------------"
#    puts "\n"
#    puts "It's a bright and clear day as you are driving down the freeway listening to the new Justin Timberlake song on the radio. You are on the way to a 11:00am client meeting when suddenly the radio presenter cuts the song abrupt and makes an emergency broadcast that a viral outbreak is quickly escalating throughout the city. Your ears listen intently as the presenter advises the public to be aware of persons who show flu-like symptoms to stay away from them as the government and authorities have yet to determine the type of outbreak. Your mind starts racing; your wife!? the baby!? Mom and Dad!? What will you do now?"
#    puts "\n"
#    puts "1. Drive home?"
#    puts "2. Drive to the nearest gas station to pick up supplies?"
#    puts "\n"
#    
#    prompt; action = gets.chomp()
#
#    if action == "1"
#      puts "You increase your speed from 50 mph to 70mph to 80mph, weaving in and out between cars as you look for your exit to head back home. As you drive, you dial home and your Mom picks up the phone. Thankfully they are visiting home to see the baby. She said there was a interrupted news broadcast. You ask Mom where everyone is; everyone is at home. You tell Mom that you are cancelling work today and heading back home. In the meantime you tell Mom to lock the doors and to get gorilla tape from the garage and to seal all the windows in the house, the garage door and the backdoor. You also ask Mom to tell Dad to prepare have the glocks and boxes of bullets from safe, ready and prepped. Your Mom's voice nervously shakes as she agrees and asked you to drive home safely and quickly."
#      puts "/n"
#      puts "Now you noticed that the other cars on the road have also increased their speed. You're guessing everyone who has either listened to the announcement on the radio or have received phone calls from their family members by now. Panic has set in; other drivers are now driving erratically and on the hard shoulders as they try to drive to safety. Suddenly cars start honking their horns; two cars to your left side have collided into each other; another car collision happened to your right. You can't think about slowing down right now; your only goal is to get home in one piece."
#      puts "/n"
#      puts"You are almost home"
#  end    
#end
#
#a_game = AnotherGame.new(:in_the_car)
#a_game.play()
  
   def cargo_bay()
     puts "The Gothons have invaded another one of your ships! You appear to be the last surviving member. You've been here before; you know what to do. Right now you have no weapons to kill and defend yourself. You head over to the weapons cache when suddenly a Gothon jumps out in front of you, blocking the door to the get to weapons cache and about to pull their phaser."
     puts "\n"
     puts "What do you do?"
     puts "\n"
     puts "1. football tackle it?"
     puts "2. grab the gun off it?"
     puts "3. go back to the cargo bay and hide?"
     
    prompt()
    action = gets.chomp()

  if action == "1"
    puts "You let out a Braveheart cry as you run towards the Gothon and attempt to wrap your arms over its 4 legs. Unbeknownst to you, Gothons have the ability to generate electrical charges at will. You feel a sudden pinch and an undescribable amount of pain and heat as a surge of electricity surges through your body, contracting your muscles. The Gothon is staring at you through it's bulging head; it's eyes are nowhere to be seen but it's jaws are salivating are it moves in to bite your neck."
    return :death

  elsif action == "2"
    puts "You leap towards to Gothon; both of your arms focused on pushing the phaser towards its body. You land on top of the creature as you both wrestle to get possession of the weapon. A jostle here and there and you headbutt it as you grap and shot the Gothon with the phaser 4 times. As you do, it's blood splatters across your chest and face. You feel a stinging and burning sensation and realize their blood is caustic like acid. The pain increases as it continues to burn you but then the creature unleashes a surge of electricity during it's dying breath. Your muscles contract and you wrythe in agony."
    return :death
    
  else 
    puts "The distance and time for you to reach for the Gothon's phaser is risky to you quickly retreat back to the cargo bay. The Gothon shoots at you as your dodge left and right. You are now back in the cargo bay; a large room containing numerous boxes of crates with minimal lighting. You duck behind a crate, trying make a sound and control your breathing. The Gothon has reached the entrance and is scouring the room. You look around the crates to find a weapon of some sort you could use in the meantime. There's nothing. You are desperate. The creature is now creeping around looking for you. Suddenly you see the button to open the hachet door and your have an idea. You look around for something to throw towards the door but there is nothing. You then remove your left boot and throw it as hard as you can towards to hachet door. Thud! The sound attracts the Gothon towards the direction as it investigates. You grab a harness and press the button; the hachet door slowly opens and a vacuum grows in strength. You grab onto the netting and one by one, you watch the crates get sucked out into space. The Gothon is using its claws, scratching the ground as it desperately tries to cling on. The Gothon lets out a cry as it is unable to hold on and like a feather in the wind, gets sucked into the black void"
    puts "You've won!"
    Process.exit(0)
  end
end
end

a_game = AnotherGame.new(:cargo_bay)
a_game.play()
