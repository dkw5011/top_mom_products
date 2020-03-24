class TopMomProducts::Product
  @@all = []
  attr_accessor :name, :price, :detail
  
  def initialize(name, price, detail)
    @name = name
    @price = price
    @detail = detail
    save
  end
  
  def self.all
    TopMomProducts::Scraper.product_scraper if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
  
end
