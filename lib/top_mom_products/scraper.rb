class TopMomProducts::Scraper
  def product_scraper
    page = Nokogiri::HTML(open("https://www.workingmother.com/best-new-baby-products-working-moms"))
    binding.pry
end

end
