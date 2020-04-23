require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#STEP 1: Create 3 classes putting 2 other classes on the joiner initialize
#STEP 2: Create followers & cults
dagger = Cult.new("Daggers Out", "Mobile", 1970, "Stab it Up")
wand = Cult.new("Wands Up", "Dallas", 1990, "No knives at a wand fight")
fist = Cult.new("Fisticuff", "Miami", 1880, "Always punch drunk")
foot = Cult.new("Footloose", "Detroit", 1990, "Kicking donkeys")
snow = Cult.new("Snowflake", "Miami", 2020, "Frostbite good")

abe = Follower.new("Abraham", 666, "Life is short")
bee = Follower.new("Beatrice", 29, "Save souls")
cc = Follower.new("Cecelia", 40, "Planet strong")
d = Follower.new("DeAnna", 71, "Take it all")
el = Follower.new("Elise", 40, "Believe")

#STEP 3: Make Blood Oaths

abe.join_cult(dagger)
abe.join_cult(foot)
bee.join_cult(wand)
d.join_cult(fist)
dagger.recruit_follower(cc)


#STEP 4: Enable cult & follower to get info about each other (through BloodOath.all)











binding.pry








# cult1 = Cult.new("The Shadows", "Atlanta", 2020, "It's dark in here")
# cult2 = Cult.new("The Anti-Shadows", "New York", 1984, "You shall not pass")
# cult3 = Cult.new("Flatiron School", "Everywhere", 2010, "I hope I pass")
# cult4 = Cult.new("Facebook Anonymous", "Everywhere", 2010, "We type good")
# cult5 = Cult.new("Corona Virus", "Everywhere", 2019, "Stay inside")

puts "Mwahahaha!" # just in case pry is buggy and exits
