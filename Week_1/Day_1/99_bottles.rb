# Write a method that will sing the song "Ninety-nine bottles of 
#beer on the wall". It should take an integer for a parameter to 
#tell it which verse to start with.

# Each verse should print to the console in a format like this:

# <n> bottles of beer on the wall
# <n> bottles of beer
# Take one down, pass it around
# <n - 1> bottles of beer on the wall
# where <n> is the current number of bottles of beer on the wall.

# The last line should read No more bottles of beer on the wall :/.

def ninety_nine_bottles(num)
  while 0 <= num
     if num > 1
       puts "#{num} bottles of beer on the wall"
       puts "#{num} bottles of beer"
       puts "Take one down, pass it around"
       puts "#{num-1} bottles of beer on the wall"
     elsif num == 1
       puts "#{num} bottle of beer on the wall"
       puts "#{num} bottle of beer"
       puts "Take one down, pass it around"
       puts "#{num-1} bottles of beer on the wall"
     else 
       puts "No more bottles of beer on the wall :/"
     end
     num -= 1
  end
end

puts ninety_nine_bottles(100)
puts ninety_nine_bottles(1000)