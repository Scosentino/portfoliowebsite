require 'sinatra'
require 'browser'




#Why/how do i add visuals to this page?

# get '/' do			#get methods takes two argumetns string: website
# 	p "#{Time.now}"	#block of ruby code executed when
# end

browser = Browser.new


if browser.mobile? == false
	get '/' do
	  File.read(File.join('public', 'index.html.erb'))
	end
elsif browser.mobile? == true
	get '/' do
		File.read(File.join('public', 'mobileindex.html'))
	end
else
	raise
end

