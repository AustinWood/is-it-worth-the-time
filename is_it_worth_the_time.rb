# puts "How often do you do the task?"
# puts "Give answer in days.\n'7' = once per week.\n'1/5' = 5x/day"
# frequency = gets.chomp
puts "How much time could you save by automating?"
puts "s = seconds, m = minutes, h = hours"
time = gets.chomp
# puts "How long will you continue doing this task?"
# puts "d = days, w = weeks, m = months, y = years"
# lifetime = gets.chomp

time_unit = time[-1]
time = time[0...-1].to_i
