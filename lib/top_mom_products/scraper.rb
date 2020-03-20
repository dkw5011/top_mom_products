class TopMomProducts::Scraper
  def self.product_scraper
    page = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
    
    products = page.css(".product-title")
    
    products.each do |p|
      name = p.text
      TopMomProducts::Product.new(name)
    end
end

def self.details_scraper
  page = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
 details = page.css("div .mtl")
 details.each do |d|
   name = d.text
   TopMomProducts::Detail.new(name)
 end
 end
 
 def self.product_price_scraper
   page = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
 price = page.css("div .product-price")
 price.each do |d|
   name = d.text
   TopMomProducts::Prices.new(name)
 end
 end

end
