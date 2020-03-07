require_relative "top_mom_products/version"
require_relative "top_mom_products/cli"
require_relative "top_mom_products/product"
require_relative "top_mom_products/scraper"

require 'pry'
require 'nokogiri'

module TopMomProducts
  class Error < StandardError; end
  # Your code goes here...
end
