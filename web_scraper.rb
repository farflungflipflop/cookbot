require 'HTTParty'
require 'Nokogiri'

require 'csv'

# this is how we request the page we're going to scrape
page = HTTParty.get('http://writeonteens.blogspot.com/2011/07/basics-dangling-prepositions.html?m=1')
puts page



