class TweetsController < ApplicationController

  def create
    @tweet = Tweet.new
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['API_KEY']
      config.consumer_secret = ENV['API_SECRET']
      config.access_token = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    end

    @client.update(params[:tweet][:text] + " #TeamRoss")
    redirect_to root_path
  end

end





@client.search("myhashtagalex")
end



@client = Twitter::REST::Client.new do |config|
      config.consumer_key = "WySk1MeJwuJoOFj5ApGTd0FDD"
      config.consumer_secret = "9PUKpwmod3YrwCSyKEOGO8eJR3LclSz2EO1iaWRn5kA9CLpWh8"
      config.access_token = "2591580042-MbKEGMcjbAXqDXLmWQyrkzNYhI4AmMqn4Hk4Iju"
      config.access_token_secret = "SXZCvclTFHNbqBphibRkI4Fjay5ZdnYaWp5GJzxm19dI6"
    end
