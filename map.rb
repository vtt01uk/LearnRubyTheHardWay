class Room
  attr_accessor :name, :description, :paths

  def initialize(name, description)
    @name = name
    @description = description
    @paths = {}
  end

  def go(direction)
    @paths[direction]
  end

  def add_paths(paths)
    @paths.update(paths)
  end
end

central_corridor = Room.new("Central Corridor",
%q{
The Gothons of Planet Percal #25 have invaded your ship and destroyed
your entire crew. You are the last surviving member and your last
mission is to get the neutron destruct bomb from the Weapons Armoury,
put it in the bridge, and blow the ship up after getting into an
escape pod.

You're running down the central corridor to the Weapons Armoury when
a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume
flowing around his hate filled body. He's blocking the door to the 
Armoury and about to pull a weapon to blast you.
})

laser_weapon_armoury = Room.new("Laser Weapon Armoury",
%q{
Lucky for you they made you learn Gothon insults in the academy.
You tell the one Gothon joke you know:
sdfkhjqjk adsfhjgf asjgsdf asjdfkjhasdnsdkfj asdjhsdf asdk adiosdhasdodsfba.
The Gothon stops, tries not to laugh, then busts out laughing and can't move.
While he's laughing you run up and shoot him square in the head
putting him down, then jump through the Weapon Armoury door.

You do a dive roll into the Weapon Armoury, crouch and scan the room
for more Gothons that might be hiding. It's dead quiet, too quiet.
You stand up and run to the far side of the room and find the 
neutron bomb in its container. There's a keypad lock on the box
and you need the code to get the bomb out. If you get the code
wrong 10 times then the lock closes forever and you can't
get the bomb. The code is 3 digits.
})

the_bridge = Room.new("The Bridge",
%q{
The container clicks open and the seal breaks, letting gas out.
You grab the neutron bomb and run as fast as you can to the
bridge where you must place it in the right spot.

You burst onto the Bridge with the neutron destruct bomb
under your arm and suprise 5 Gothons who are trying to
take control of the ship. Each of them has an even uglier
clown costume than the last. They haven't pulled their
weapons out yet, as they see the active bomb under your
arm and don't want to sell it off.
})

escape_pod = Room.new("Escape Pod",
%q{
You point your blaser at the bomb under your arm
and the Gothons put their hands up and start to sweat.
You inch backward to the door, open it, and then carefully
place the bomb on the floor, pointing your blaster at it.
You then jump back through the door, puch the close button
and blast the lock so the Gothons can't get out.
Now that the bomb is placed you run to the escape pod to
get off this tin can.

You rush through the ship desperately trying to make it to
the escape pod before the whole ship explodes. It seems like
hardly any Gothons are on the ship, so your run is clear of
interference. You get to the chamber with escape pods, and
now need to pick one to take. Some of them could be damaged
but you don't have time to look. There's 5 pods, which one
do you take?
})

the_end_winner = Room.new("The End",
%q{
You jump into pod 2 and hit the eject button.
The pod easily slides out into space heading to
planet below. As it flies to the planet, you look
back and you see your ship implode then explode like a
bright star, taking out the Gothon ship at the same
time. You won!
})

the_end_loser = Room.new("The End",
%q{
You jump into a random pod and hit the eject button.
The pod escapes out into the void of space, then
implodes as the hull ruptures, crushing your body
into jam jelly.
}


escape_pod.add_paths({
    '2' => the_end_winner,
    '1' => the_end_loser
})

generic_death = Room.new("death", "You died.")

the_bridge.add_paths({
   'throw the bomb' => generic_death,
   'slowly place the bomb' => escape_pod
})

laser_weapon_armoury.add_paths({
    '0132' => the_bridge,
    '*' => generic_death
})

central_corridor.add_paths({
     'shoot!' => generic_death,
     'dodge!' => generic_death,
     'tell a joke' => laser_weapon_armoury
})

START = central_corridor
)
