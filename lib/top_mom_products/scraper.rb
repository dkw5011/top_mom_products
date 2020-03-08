class TopMomProducts::Scraper
  def self.product_scraper
    page = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
    
    products = page.css(".product-title").text
    
    binding.pry
end

end
