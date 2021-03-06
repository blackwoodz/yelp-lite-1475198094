class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.user_id = params[:user_id]
    @review.restaurant_id = params[:restaurant_id]
    @review.stars = params[:stars]
    @review.photos = params[:photos]
    @review.title = params[:title]
    @review.body = params[:body]

    if @review.save
      redirect_to "/reviews", :notice => "Review created successfully."
    else
      render 'new'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    @review.user_id = params[:user_id]
    @review.restaurant_id = params[:restaurant_id]
    @review.stars = params[:stars]
    @review.photos = params[:photos]
    @review.title = params[:title]
    @review.body = params[:body]

    if @review.save
      redirect_to "/reviews", :notice => "Review updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:id])

    @review.destroy

    redirect_to "/reviews", :notice => "Review deleted."
  end
end
