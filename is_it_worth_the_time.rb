puts "How often do you do the task?"
puts "Give answer in days. ('7' = once per week. '1/5' = 5x/day)"
frequency = gets.chomp
frequency_seconds = frequency.to_i * 60 * 60 * 24

puts "How long will you continue doing this task?"
puts "d = days, w = weeks, m = months, y = years"
lifetime = gets.chomp

lifetime_unit = lifetime[-1]
lifetime_seconds = lifetime[0...-1].to_i

case lifetime_unit
when "d"
  lifetime_seconds = lifetime_seconds * 60 * 60 * 24
when "w"
  lifetime_seconds = lifetime_seconds * 60 * 60 * 24 * 7
when "m"
  lifetime_seconds = lifetime_seconds * 60 * 60 * 24 * 30
when "y"
  lifetime_seconds = lifetime_seconds * 60 * 60 * 24 * 365
else
  puts "You entered an invalid unit of time, dummy"
end

puts "How much time could you save by automating?"
puts "s = seconds, m = minutes, h = hours"
time = gets.chomp

time_unit = time[-1]
time_seconds = time[0...-1].to_i

case time_unit
when "s"
  # break
when "m"
  time_seconds = time_seconds * 60
when "h"
  time_seconds = time_seconds * 60 * 60
else
  puts "You entered an invalid unit of time, dummy"
end

total_events = lifetime_seconds / frequency_seconds
total_saved_time = total_events * time_seconds

result_str = "Don't spend more than "
case total_saved_time
when 0..59
  result_str += "#{total_saved_time}s"
when 60..3599
  result_str += "#{total_saved_time.to_f / 60}m"
else
  result_str += "#{total_saved_time.to_f / 3600}h"
end

result_str += " automating this task."

puts result_str
