class TopMomProduct::CLI
  def call 
    puts "Welcome to 2019 top mommy products!!!"
    get_products
    list_products
  end
  
  def get_products
    @products = ["highchair", "stroller", "baby carrier", "baby swing"]
end

def list_products
  @products.each.with_index(1) do |product, index|
    puts "#{index}. #{product}"
  end
end


end
