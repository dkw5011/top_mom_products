class TopMomProducts::CLI
  def call 
    puts "Welcome to 2019 top mommy products!!!"
    get_products
    list_products
  end
  
  def get_products
    @products = TopMomProducts::Product.all
end

def list_products
  puts "Please select a product by number to get more information."
  @products.each.with_index(1) do |product, index|
    puts "#{index}. #{product}"
  end
end


end
