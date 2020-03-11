class TopMomProducts::Scraper
  def self.product_scraper
    page = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
    
    products = page.css(".product-title")
    
    #details = page.css(".mtl p")[0].text
    binding.pry
    products.each do |p|
      name = p.text
      TopMomProducts::Product.new(name)
    end
end

#def self.details_scraper
 # details = page.css("div.mtl")
#end

end
