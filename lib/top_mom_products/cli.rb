class TopMomProducts::CLI
  def call 
    puts "Welcome to 2019 top mommy products!!!"
    get_products
    list_products
    get_user_pick
  end
  
  def get_products
    @products = TopMomProducts::Product.all
end

def get_details
  @details = TopMomProducts::Detail.all
end

def list_products
  puts "Please select a product by number to get more information."
  @products.each.with_index(1) do |product, index|
    puts "#{index}. #{product.name}"
  end
end

def get_user_pick
  selection = gets.strip.to_i
  if valid_input(selection, @products)
  show_detail_for(selection)
else
  puts "Invalid number"
  list_products
  get_user_pick
end
end

def valid_input(input, data)
  input.to_i <= data.length && input.to_i > 0
 end
 
 def show_detail_for(selection)
   product = @products[selection - 1]
   detail = @details[selection - 1]
   puts "Here are the details for your #{product.name}"
 end
 
 
end
