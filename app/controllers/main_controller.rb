class MainController < ApplicationController
  def index
  	@subreddits = Subreddit.all
	if params[:name]
		@selectedSubreddit = Subreddit.find_by(:name => params[:name].capitalize())
		
		# if the name passed into the params doesn't return a subreddit,
		# then default to the first one 
		if @selectedSubreddit.nil?
		  @selectedSubreddit = Subreddit.find(1)
		end
	else
		@selectedSubreddit = Subreddit.find(1)
	end	
  end
end
