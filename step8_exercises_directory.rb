@cohorts = {
   January: 0,
   February: 0,
   March: 0,
   April: 0,
   May: 0,
   June: 0,
   July: 0,
   August: 0,
   September: 0,
   October: 0,
   November: 0,
   December: 0
 }


def add_cohort
   next_cohort = :December
   month_number = 1
   puts "Please enter the month number of the cohort would like to join"
   cohort = gets.chomp
   case cohort
   when "1"
     cohort = :January
   when "2"
     cohort = :February
   when "3"
     cohort = :March
   when "4"
     cohort = :April
   when "5"
     cohort = :May
   when "6"
     cohort = :June
   when "7"
     cohort = :July
   when "8"
     cohort = :August
   when "9"
     cohort = :September
   when "10"
     cohort = :October
   when "11"
     cohort = :November
   when "12"
     cohort = :December
   when ""
     puts "No input, the upcoming #{next_cohort} cohort will be added"
     cohort = next_cohort
   else
     puts "Input not recognised, the upcoming #{next_cohort} cohort was added"
   end
   cohort
 end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  cohort = add_cohort
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort}
    if students.count == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    # get another name from the user
    name = gets.chomp
    cohort = add_cohort
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
  #  puts "#{students[i][:name]} (#{students[i][:cohort]} cohort)".center(30)
    i += 1
  end
  puts students.group_by {|student| student[:cohort]}
   .each {|cohort, students| students.map!{|single_student| single_student = (single_student[:name])}}.flatten
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(35)
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
