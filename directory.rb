# print the list of the students
def input_students 
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    students = []
    name = gets.chomp
    while !name.empty? do 
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        name = gets.chomp
    end
    students
end    

def print_header
    puts "The students of Villians Academy"
    puts "----------------"
end

def print(students)
    students.each do |student|
        puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
end

def print_footer(names)
    puts "Overall, we have #{names.count} great students"
end

def interactive_menu 
students = []
loop do 
# 1. print the menu and ask what the user would like to do
puts "1. Input the students"
puts "2. Show the students"
puts "9. Exit"
#2. read the input and save it to a var
selection = gets.chomp
# go ahead with what user asked
case selection 
when "1"
    # input students
    students = input_students
when "2"
    # show the students
    print_header
    print(students)
    print_footer(students)
when "9"
    exit # this will cause the program to terminate
else 
    puts "I don't know what you meant, try again"
end
end
end 
students = input_students
print_header
print(students)
print_footer(students)