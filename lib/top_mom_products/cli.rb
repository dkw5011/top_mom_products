class TopMomProducts::CLI
  def call 
    puts "Welcome to 2019 top mommy products!!!"
    get_products
    get_details
    list_products
    get_user_pick
    second_selection
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
  show_summary_for(selection)
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
   puts "Here are the details for your #{product.name}"
 end
 
 def show_summary_for(selection)
   detail = @details[selection - 1]
   puts detail.name
 end
 
 def second_selection
   
   puts "Would you like to select another product to receive information on? Type Y"
   puts "Would you like to exit the program? Type X"
   get_input = gets.strip.upcase
   if get_input == "Y"
     call
   elsif get_input == "X"
   puts "Thank you for visiting the Top Mom Products Program! Come back again!"
 else
   puts "Invalid Input"
   second_selection
 end
 end
end
