done = false

puts "Welcome to our pizza delivery service!"

while not done
  puts "\nWhat can I do for you?"
  puts "1: Order a pizza"
  puts "2: I am done"
  puts "-_-" * 8

  choice = gets.chomp.to_i
  case choice
  when 1
    puts "Have a look at our menu"
  when 2
    done = true
  else
    puts "\n *ERROR*"
    puts "\nplease input 1 or 2"
    puts "\n *ERROR*"
  end

  if done
    puts "Thank you for your visit! hope to see you again soon."
    puts "   __"
    puts " // \"\"--.._"
    puts "||  (_)  _ \"-._"
    puts "||    _ (_)    '-."
    puts "||   (_)   __..-'"
    puts " \\__..--\"\""
  end
end
