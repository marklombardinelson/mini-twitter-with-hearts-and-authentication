class TweetsController < ApplicationController
  # GET /tweets
  def index
    @tweets = Tweet.all.order("created_at DESC")
  end

  # GET /tweets/1
  def show
    @tweet = Tweet.find(params[:id])
  end

  # GET /tweets/new
  def new
    @tweet = Tweet.new
  end

  # GET /tweets/1/edit
  def edit
    @tweet = Tweet.find(params[:id])
  end

  # POST /tweets
  def create
    @tweet = Tweet.new(tweet_params)

    if @tweet.save
      redirect_to tweets_path, notice: 'Tweet was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tweets/1
  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to @tweet, notice: 'Tweet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tweets/1
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweets_url, notice: 'Tweet was successfully destroyed.'
  end

  def heart
    @tweet = Tweet.find(params[:id])
    @tweet.hearts.create

    # if @tweet.hearts.where(user: current_user).count != 0
    #  @tweet.hearts.where(user: current_user).destory_all
    # else
    #  @tweet.hearts.create
    # end

    redirect_to tweets_path
  end

  private
  # Only allow a trusted parameter "white list" through.
  def tweet_params
    params.require(:tweet).permit(:post, :username)
  end
end
