require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/public/'

#Why/how do i add visuals to this page?

# get '/' do			#get methods takes two argumetns string: website 
# 	p "#{Time.now}"	#block of ruby code executed when 
# end

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

