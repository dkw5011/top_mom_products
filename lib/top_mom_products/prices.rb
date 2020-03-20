class TopMomProducts::Prices
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    save
  end
  
  def self.all
    TopMomProducts::Scraper.product_price_scraper if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
  
end
