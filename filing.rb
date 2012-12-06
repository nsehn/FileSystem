require 'sinatra'
require 'whois' #this is a Ruby gem
require 'sinatra/reloader'
require 'json'
require 'rubygems'
require 'debugger'
set :public_folder, File.dirname(__FILE__) + '/Public'

get '/' do 
	erb :index
	
end

post '/list' do
	File.open('list.txt', 'a+') do |file|
		listitem = params[:listitem]
		file.puts listitem
		
		  
	end
		redirect '/'
end  
