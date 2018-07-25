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
print "your stats are "
x = 0
until x == 6
  print remove_it(dndStats).inject(0, :+) #the inject puts + inbetween each number in the arrray
  print " "
  x += 1
end
