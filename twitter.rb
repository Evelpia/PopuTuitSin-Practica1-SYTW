# -*- coding: utf-8 -*-
require 'twitter'
require 'sinatra'

require './configure'

get '/' do
	#@todo_tweet = []
	@seguidores = []
	@name = ''
	@number = 0
	erb :twitter
end

post '/' do
	#@todo_tweet = []
	@seguidores = []
	client = my_twitter_client()
	@name = params[:firstname] || ''
	@number = params[:n].to_i
	@number = 1 if @number <= 0
	client.user(@name)
	if client.user?
		populares = client.friends.take(@number)
		@seguidores = populares
	end
	#ni = @number
	#nombrecito = @name
	#array = client.friend_ids(nombrecito).attrs[:ids].take(ni)
	#if client.user?
		#ultimos_t = client.user_timeline(@name,{:count=>@number.to_i})
		#@todo_tweet =(@todo_tweet != '') ? ultimos_t.map{ |i| i.text} : ''
	#end
	erb :twitter
end
