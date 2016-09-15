def input_students
    puts "Please enter the name of the students"
    puts "To finish just hit renturn twice"
    #create empty array
    students = []
    #get the first name
    name = gets.chomp
    #while the name is not empty, repeat this code
    while !name.empty? do
        puts "Do you have a hobby?"
        hobbies = gets.chomp
        puts "Where were you born?"
        country_of_birth = gets.chomp
        puts "How tall are you?"
        height = gets.chomp
        puts "Which cohort are you studying in?"
        cohort = gets.chomp
        if cohort.empty?
            cohort = :november
        end
        
        #add the student hash to the array
        students << {name: name, hobbies: hobbies, country_of_birth: country_of_birth, height: height, cohort: cohort}
        if students.count == 1
            puts "Now we have #{students.count} student"
        elsif
            puts "Now we have #{students.count} students"
        end
        
        #get another name from the user
        puts "Please enter the next students name, or press enter to leave."
        name = gets.chomp
    end
    
    students
end
students = input_students


 def print_header
    puts "The students of Villians Academy".center(50)
    puts "-----------------------".center(50)
 end

 def printr(students) 
    students.select do |student|  
        meems = ''
        meems = "#{student[:name]} (#{student[:cohort]} cohort)"
        puts meems.center(50)
    end
 end




# finally, we print the total number of students

 def print_footer(names)
    if names.count == 1
        print "Overall, we have, we have #{names.count} great student. ".center(50)
    elsif names.count > 1
        print "Overall, we have, we have #{names.count} great students. ".center(50)
    end
    #its's important that we print() doesn't ass new line characters
 end


print_header
printr(students)
print_footer(students)