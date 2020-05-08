# Q6: use .center() to allign output
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp

  puts "Which cohort do you belong in?"
  cohort = gets.chomp
  if cohort == nil
    cohort = "pending"
  end
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of input_students
  students
end

def print_header
  puts "The students of Villains Academy".center(35)
  puts "-------------".center(30)
end

def print(students)
  i = 0
  while i < students.count
    puts "#{students[i][:name]} (#{student[i][:cohort]} cohort)".center(30)
    i += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(35)
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
