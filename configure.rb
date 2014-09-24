def my_twitter_client
	Twitter::REST::Client.new do |config|
		config.consumer_key	= 'g1i3utmkFireb2nXkqNFEVYU9'
		config.consumer_secret	= 'eiy8uZAM0wZdju9I6oj97Y7fOUJJgKmPaw7p5rQEkUS72o5KZj'
		config.access_token	= '226946128-7K2FZPD9n9RUbw5ZZciRtWn3fE7yYRXnpqFTRBcX'
		config.access_token_secret = 'hP6HIC8LyCWYzbIsKpUn7rgBLo1MzUfJ7CU2PmDQc3ZA9'
	end
end
