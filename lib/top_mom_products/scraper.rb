class TopMomProducts::Scraper
  def self.product_scraper
    page = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
    
    
    products = page.css(".product-section")
    
    products.each do |p|
      name = p.css(".product-title").text
      price = p.css(".product-price").text
      detail = p.css(".mtl").text
      TopMomProducts::Product.new(name, price, detail)
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
