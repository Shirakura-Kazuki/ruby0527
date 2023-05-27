class ReviewsController < ApplicationController
    before_action :set_store
  
    def new
      @review = @store.reviews.new
    end
  
    def create
      @review = @store.reviews.new(review_params)
  
      if @review.save
        redirect_to @store, notice: 'レビューが投稿されました。'
      else
        render :new
      end
    end
  
    private
  
    def set_store
      @store = Store.find(params[:store_id])
    end
  
    def review_params
      params.require(:review).permit(:title, :body, :rating)
    end
  end
  