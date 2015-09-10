require 'sinatra'
require 'browser'




#Why/how do i add visuals to this page?

# get '/' do			#get methods takes two argumetns string: website
# 	p "#{Time.now}"	#block of ruby code executed when
# end

get '/' do
 browser = Browser.new(ua: request.user_agent, accept_language: request.accept_language)
 if browser.mobile?
    File.read(File.join('public', 'mobileindex.html'))
 else
   File.read(File.join('public', 'index.html.erb'))
 end
end

