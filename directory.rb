# print the list of the students
students = [
    "Dr. Hannibal Lecter",
    "Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex DeLarge",
    "The Wicked Witch of the West",
    "Terminator",
    "Freddy Kreuger",
    "The Joker",
    "Joffrey Baratheon",
    "Norman Bates"
]

puts "The students of Villians Academy"
puts "------------------"
students.each { |student| puts student }

# print the total number of students
puts "Overall, we have #{students.count} great students"