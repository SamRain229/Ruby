# Student Loan RPG

#Intro Message to User
#
#create script variables

monsters = ["Federal Subsidized", "Sally Mae", "Freddie Mac"]

puts "Welcome to the Student Loan RPG"
puts "Please Enter Your Name: "

main_Char = gets.chomp
    puts "Welcome #{main_Char} to adulthood as a recent college grad. \n 
        to pay back your loans in a timely fashion you will have to get a job,
        make your payments ontime, and all around be awesome"

#start fist leg of game

puts "#{main_Char}, how much student debt did you acrue?"
debt = gets.chomp.strip

if (debt.include?(("a".."z").to_a.join))
    puts "give me a valid number"
    debt = gets.chomp
elsif (debt.include? ".")
    debt = debt.to_f
else
    debt = debt.to_i
end

while (true)
    if ((debt.is_a? Integer) || (debt.is_a? Float))
        break
    else
        puts "Please enter a valid number"
        debt = gets.chomp
    end
end
    
   
    if (debt < 10000)
        puts "Stop Whining and get to work"
    elsif (debt >= 10000) || (debt < 50000)
        puts "That sucks, but maybe you can get married and buy a house some day"
    elsif (debt >= 50000) || (debt < 100000)
        puts "You got played sucka, get to work you, you cant bankrupt this problem away"
    else (debt >= 100000)
        puts "Change your idenity and move to Europe"
    end
