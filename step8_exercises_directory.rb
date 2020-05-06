# Q5: add more info on students (hobbies, country of birth, height)
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
  puts "Enter the hobbies of #{name}"
  hobbies = gets.chomp
  puts "Enter the country of birth of #{name}"
  c_o_b = gets.chomp
  puts "Enter the height of #{name} (in feet and inches)"
  height = gets.chomp
    students << {name: name, cohort: :november, hobbies: hobbies,
      c_o_b: c_o_b, height: height}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of input_students
  students
end
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  students.each do |student|
    puts "#{student[:name]} who likes #{student[:hobbies]}, is from #{student[:c_o_b]}, #{student[:height]} feet tall and in the #{student[:cohort]} cohort"
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
