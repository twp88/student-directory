def input_students
    puts "Please enter the name of the students"
    puts "To finish just hit renturn twice"
    #create empty array
    students = []
    #get the first name
    name = gets.chomp
    #while the name is not empty, repeat this code
    while !name.empty? do
        #add the student hash to the array
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        #get another name from the user
        name = gets.chomp
    end
    
    students
end
students = input_students


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

    print "Overall, we have, we have #{names.count} great students. "
    #its's important that we print() doesn't ass new line characters
 end


print_header
printr(students)
print_footer(students)
