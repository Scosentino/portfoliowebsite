require 'sinatra'
require 'httparty'
require 'json'
require 'nokogiri'

#Why/how do i add visuals to this page?

get '/' do			#get methods takes two argumetns string: website 
	p "#{Time.now}"	#block of ruby code executed when 
end

get '/g' do
  "Hello World"
end

