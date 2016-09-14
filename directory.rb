
 students = [

 "Dr. Hannibal Lecter",
 "Darth Vader",
 "Nurse Ratched",
 "Michael Corleone",
 "Alex DeLarge",
 "The Wicked Witch of the West",
 "Terminator",
 "Freddie Krueger",
 "The Joker",
 "Joffrey Baratheon",
 "Norman Bates"
 ]
 
 def print_header
    puts "The students of Villians Academy"
    puts "-----------------------"
 end

 def printr(names) 
    names.each do |name|
    puts name
    end
 end



# finally, we print the total number of students

 def print_footer(names)

    print "Overall, we have, we have #{names.count} great students. "
    #its's important that we print() doesn't ass new line characters
 end


print_header
printr(students)
print_footer(students)
