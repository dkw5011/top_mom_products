require_relative "top_mom_products/version"
require_relative "top_mom_products/cli"
require_relative "top_mom_products/product"
require_relative "top_mom_products/scraper"
require_relative "top_mom_products/details"

require 'pry'
require 'nokogiri'
require 'open-uri'
require 'colorize'

module TopMomProducts
  class Error < StandardError; end
  # Your code goes here...
end
