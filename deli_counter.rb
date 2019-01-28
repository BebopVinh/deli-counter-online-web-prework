require 'pry'

def take_a_number(customers, new_person)
  if customers.size == 0
    puts "Welcome, #{new_person}. You are number 1 in line."
    customers.push(new_person)

  else
      customers.push(new_person)
      puts "Welcome, #{customers.last}. You are number #{customers.size} in line."
  end
end


def line(customers)
  current_line = []
  if customers.size == 0
    puts "The line is currently empty."
  else
    for i in (0...customers.size)
      current_line << "#{i+1}. #{customers[i]}"
    end
    puts "The line is currently: #{current_line * " "}"
  end
end


def now_serving(customers)
   if customers.size == 0
     puts "There is nobody waiting to be served!"
   else
    puts "Currently serving #{customers.shift}."
  end
end

binding.pry 

puts "goodbye!"
