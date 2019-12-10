# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError, TypeError
    puts "Invalid data type. Please enter a number."
  end
end

# p convert_to_int("a")
# p convert_to_int([1,2])
# p convert_to_int(1)

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

class NoCoffee < StandardError
  def print_message
    puts "No more coffee please."
  end
end

class NoFruit < StandardError
  def print_message
    puts "That's not a fruit!"
  end
end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == 'coffee'
    raise NoCoffee
  else
    raise NoFruit 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue NoCoffee => e
    puts e.print_message
    retry
  rescue NoFruit => e
    puts e.print_message
  end

end 

# p feed_me_a_fruit

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    raise ArgumentError.new("You forgot to enter a name.") if name.length <= 0
    @yrs_known = yrs_known
    raise ArgumentError.new("Sorry but we've only known each other less than 5 years.") if yrs_known < 5
    @fav_pastime = fav_pastime
    raise ArgumentError.new("You forgot to enter a favorite pastime.") if fav_pastime.length <= 0
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


