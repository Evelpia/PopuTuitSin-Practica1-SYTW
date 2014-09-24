def my_twitter_client
	Twitter::REST::Client.new do |config|
		config.consumer_key	= 'GiLdvV7GmYXQZgr8fNPsipOr8'
		config.consumer_secret	= 'R4isKoUf2ZwLvgN1RuqBs08Z5KuE1zJOdmrTAfMHzVc4EwZ2td'
		config.access_token	= '226946128-RQYcLrkOhqDzUFTt09cwHCh1XwtJsQGltNa57EGn'
		config.access_token_secret = '60HLVvqAaPnAZB4amydLncxZiMvLfVvGBkhcTxdsdZ8WX'
	end
end
