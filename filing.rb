require 'sinatra'
require 'whois' #this is a Ruby gem
require 'sinatra/reloader'
require 'json'
require 'rubygems'
require 'debugger'
set :public_folder, File.dirname(__FILE__) + '/Public'

get '/' do 
	@items = []
	File.open('list.txt', 'r').each do |line| #Reads list item to display on index.erb. Line 57-63 gets this information from the ruby code and displays it
		@items << line
	end
	erb :index
end


post '/list' do
	File.open('list.txt', 'a+') do |file|
		listitem = params[:listitem]
		file.puts listitem		  
	end
		redirect '/'
end  
