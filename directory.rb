
 students = [

 {name: "Dr. Hannibal Lecter", cohort: :november},
 {name: "Darth Vader", cohort: :november},
 {name: "Nurse Ratched", cohort: :november},
 {name: "Michael Corleone", cohort: :november},
 {name: "Alex DeLarge", cohort: :november},
 {name: "The Wicked Witch of the West", cohort: :november},
 {name: "Terminator", cohort: :november},
 {name: "Freddie Krueger", cohort: :november},
 {name: "The Joker", cohort: :november},
 {name: "Joffrey Baratheon", cohort: :november},
 {name: "Norman Bates", cohort: :november}
 ]
 
 def print_header
    puts "The students of Villians Academy"
    puts "-----------------------"
 end

 def printr(students) 
    students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
 end



# finally, we print the total number of students

 def print_footer(names)

    print "Overall, we have, we have #{students.count} great students. "
    #its's important that we print() doesn't ass new line characters
 end


print_header
printr(students)
print_footer(students)
