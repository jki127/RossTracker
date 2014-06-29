class TweetsController < ApplicationController

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.save
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['API_KEY']
      config.consumer_secret = ENV['API_SECRET']
      config.access_token = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    end

    @client.update(params[:tweet][:text] + " @rossta #TeamRoss")
    redirect_to root_path
  end

private

def tweet_params
  params.require(:tweet).permit(:text)
end

end
