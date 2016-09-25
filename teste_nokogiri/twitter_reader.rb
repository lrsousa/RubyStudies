require 'rubygems'
require 'net/http'
require 'openssl'
require 'nokogiri'

uri = URI.parse('https://twitter.com/melhoresdomundo')
#OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

@data_html = http.get(uri.request_uri)
doc = Nokogiri::HTML(@data_html.body)
items = doc.css ".content"

items.each do |item|
    autor = item.css(".js-action-profile-name").first.content
    tweet = item.css(".js-tweet-text").first.content

    puts autor
    puts tweet
    puts
end
