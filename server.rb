require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/public/Portfolio'

#Why/how do i add visuals to this page?

# get '/' do			#get methods takes two argumetns string: website 
# 	p "#{Time.now}"	#block of ruby code executed when 
# end

get '/g' do
  "Hello World"
end

