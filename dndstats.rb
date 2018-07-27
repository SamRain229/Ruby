require 'numbers_in_words'
#Generates 4 random numbers and puts them in an array (the rand is +1 cuz random in ruby starts at 0)
def dndStats
  4.times.map{Random.rand(6) + 1}
end
#deletes the lowest number in the array
def remove_it(num)
  num.delete_at(num.index(num.min))
  num
end
#does this 6 times
def statPrint
  print "your stats are "
  x = 0
    until x == 6
        print remove_it(dndStats).sum
        print " "
        x += 1
    end
end

puts "How many Players do you have?"
j = gets.chomp
sleep 1
 puts "\e[H\e[2J"
if j.is_a? String
  x = 0
  y = 0
    until x == NumbersInWords.in_numbers(j)
      y += 1
        print "Character #{y.to_i} "
        print statPrint
        puts "\n",""
        x += 1
      end
else
      x = 0
      j.to_i
    until x == j
      y += 1
        print "Character #{y.to_i} "
        print statPrint
        puts "\n",""
        x += 1
    end
end
