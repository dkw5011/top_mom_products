class TopMomProducts::Scraper
  def self.product_scraper
    page = Nokogiri::HTML(open("https://www.workingmother.com/best-new-baby-products-working-moms"))
    
    products = page.css("in-content-skip")
    
    binding.pry
end

end
