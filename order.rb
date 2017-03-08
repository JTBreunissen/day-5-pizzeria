class Order
  attr_accessor :content

  def initialize
    @content = []
  end

  def add(pizza)
    @content << pizza
  end

  def value
    @content.reduce(0) do |sum, pizza|
      sum + pizza.price
    end
  end

  def print
    puts "Your order is: "
    puts "____________________"
    @content.each do |pizza|
      puts "#{pizza.name} - #{pizza.price}"
    end
    puts "____________________"
  end
end
