# -*- coding: utf-8 -*-
require 'twitter'
require 'sinatra'

require './configure'

get '/' do
	#@seguidores = []
	@name = ''
	@number = 0
	erb :twitter
end

post '/' do
	@seguidores = []
	client = my_twitter_client()
	@name = params[:firstname] || ''
	@number = params[:n].to_i
	@number = 1 if @number <= 0
	if client.user? @name 
		seguidores = client.friends(@name).take(@number)
		amigos = {}
		seguidores.map { amigos[client.user.name] = client.user.followers_count }
		@seguidores = amigos.sort_by { |x, y| -y }
		end
	erb :twitter
end
