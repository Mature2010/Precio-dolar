require 'nokogiri'
require 'open-uri'

url = 'https://www.preciodolar.com/precio-del-dolar-en-banamex'
i = 0
puts 'Banamex'

  arch = Nokogiri::HTML(open(url))
  list = arch.css('div.col-md-3.col-xs-6')

  list.css('span.rate-value').each do |post|
  	if i == 0
  		puts 'Compra Dolar: $' + post.content + ' MXN'
  	elsif i == 1
  		puts 'Venta Dolar: $' + post.content + ' MXN'
  	end
  		
  	i += 1
  end

