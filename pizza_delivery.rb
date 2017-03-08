require_relative "menu.rb"
require_relative "order.rb"

done = false
order = Order.new
menu = Menu.new

puts "Welcome to our pizza delivery service!"

while not done
  puts "\nWhat can I do for you?"
  puts "1: Order a pizza"
  puts "2: I am done"
  puts "3: Check out (Eur #{order.value})" if order.value > 0
  puts "-_-" * 8
  choice = gets.chomp.to_i
  case choice
  when 1
    menu.print
    pizza = menu.make_choice
    order.add(pizza)
  when 2
    done = true
  when 3
    order.print
    puts "Do you wish to pay with"
    puts "1: ideal"
    puts "2: creditcard"
    payment = gets.chomp.to_i
    done = (payment == 1 || payment == 2)
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
