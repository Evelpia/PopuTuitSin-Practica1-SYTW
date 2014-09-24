def my_twitter_client
	Twitter::REST::Client.new do |config|
		config.consumer_key	= 'SI3mmPIrHtTGYUxzkiIx3sXbO'
		config.consumer_secret	= 'RHIkTuCeCOLLgcwD7qPPR7RporwVJ8l2BTJmLv25JuQJrXDCRZ'
		config.access_token	= '226946128-RQYcLrkOhqDzUFTt09cwHCh1XwtJsQGltNa57EGn'
		config.access_token_secret = '60HLVvqAaPnAZB4amydLncxZiMvLfVvGBkhcTxdsdZ8WX'
	end
end
