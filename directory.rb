@students = []
def add_to_students(name, cohort)
    @students << {name: name, cohort: cohort.to_sym}
    puts "Students has been successfully updated"
end

def input_students
    
    puts "Please enter the name of the students"
    puts "To finish just hit return twice"
    #create empty array
    @students = []
    #get the first name
    name = STDIN.gets.chomp
    
    #make sure the user enters a name 
    if name.empty? || name == '' || name == nil
        puts "Please enter a name to start"
        name = STDIN.gets.chomp
    end
    
    
    #chomp alternative
    if name[-1] == ' '
            name.chop!
    end
    
    
   
        
    #while the name is not empty, repeat this code
    while !name.empty? do
        puts "Which cohort are you studying in?"
        cohort = STDIN.gets.chomp
        if cohort.empty?
            cohort = "november"
        end
        
        #add the student hash to the array
        add_to_students(name, cohort)#using method to add to students array
        if @students.count == 1
            puts "Now we have #{@students.count} student"
        elsif
            puts "Now we have #{@students.count} students"
        end
        
        #get another name from the user
        puts "Please enter the next students name, or press enter to leave."
        name = STDIN.gets.chomp
    end
    
end



 def print_header
    puts "The students of Villians Academy".center(50)
    puts "-----------------------".center(50)
 end

 def printr(students) 
    @students.select do |student|  
        
        puts "#{student[:name]} (#{student[:cohort]} cohort)".center(50)
        puts "Their hobby is #{student[:hobbies]}".center(50)
        puts "They were born in #{student[:country_of_birth]}".center(50)
        puts "They are #{student[:height]} tall".center(50)
        
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

def print_menu
            #1. Print the options available
        puts "Choose an option"
        puts "1. Input student information"
        puts "2. Show the students"
        puts "3. Save the list of students to students.csv"
        puts "4. Load students from students.csv"
        puts "9. Exit the program"
end


def show_students
        print_header
        printr(@students)
        print_footer(@students)
end

def process(selection)
        
        #3.do what the user wants
       case selection
       when "1"
           input_students
        when "2"
            show_students
        when "3"
            save_students
        when "4"
            load_students
        when "9"
            exit
        else
            puts "What doo you mean?"
        end
end


def interactive_menu
    try_load_students
    loop do 
        print_menu
        process(STDIN.gets.chomp)
    end
    
end    

def save_students
  # open the file for writing
  puts "To which file do you wish to save?"
  breeps = STDIN.gets.chomp
  file = File.open(breeps, "w")
  puts "The file #{breeps} has been opened"
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  puts "Students have been successfully saved"
  file.close
end

        
        
def load_students(filename = STDIN.gets.chomp)
  file = File.open(filename, "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(',')

    add_to_students(name, cohort)#using method to add to students array
  end
  puts "Students.csv has been successfully loaded"
  file.close
end

def try_load_students
    puts "Please enter a name of a file that you wish to load"
   filename = STDIN.gets.chomp #first arguement from the command line
    if filename.nil?
       filename = "students.csv"
    end
   
   if File.exists?(filename)#if it exists
       load_students(filename)
       puts "Loaded #{@students.count} from #{filename}"
    else #if it doesn't exist
        puts "Sorry #{filename} doesn't exist"
        exit
    end
    

    
end
        
    
interactive_menu
