
  # def initialize
  #   @products = [:fruit_tea, :strawberries, :coffee]
  #   @product_costs = { fruit_tea: 311, strawberries: 500, coffee: 1123}
  # end

  def basket
    basket = {}

    print "How many Fruit Teas would you like to buy? "
    fruit_tea_qty = gets.chomp.to_i
    print "How many Strawberries would you like to buy? "
    strawberries_qty = gets.chomp.to_i
    print "How much Coffee would you like to buy? "
    coffee_qty = gets.chomp.to_i

    products = [:fruit_tea, :strawberries, :coffee]
    product_costs = { fruit_tea: 311, strawberries: 500, coffee: 1123}
    product_qty = { fruit_tea: fruit_tea_qty, strawberries: strawberries_qty, coffee: coffee_qty}

    if strawberries_qty >= 3
      product_costs[:strawberries] = 450
    end
    if fruit_tea_qty % 2 == 0
      total_fruit_tea_cost = (product_costs[:fruit_tea]*(fruit_tea_qty/2))
    elsif fruit_tea_qty odd? && fruit_tea_qty != 1
      new_qty = (fruit_tea_qty-1)/2
      total_fruit_tea_cost = (product_costs[:fruit_tea]*new_qty) + (product_costs[:fruit_tea])
    end

    total_cost = products.map do |product|
      (product_qty[product]*product_costs[product])
    end
    puts "The total cost without any discount is $#{total_cost.inject(:+).to_f/100}"
   end


  # def pricing_rules
  #   if strawberries_qty >= 3
  #     product_costs[:strawberries] = 450
  #   end
  #   if fruit_tea_qty % 2 == 0
  #     total_fruit_tea_cost = (product_costs[:fruit_tea]*(fruit_tea_qty/2))
  #   elsif fruit_tea_qty odd? && fruit_tea_qty != 1
  #     new_qty = (fruit_tea_qty-1)/2
  #     total_fruit_tea_cost = (product_costs[:fruit_tea]*new_qty) + (product_costs[:fruit_tea])
  #   end
  # end

basket

