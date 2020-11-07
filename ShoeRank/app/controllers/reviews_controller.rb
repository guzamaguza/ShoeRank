class ReviewsController < ApplicationController
  before_action :redirect_if_not_logged_in


  def new
    if @shoe = Shoe.find_by_id(params[:shoe_id])
      @review = @shoe.reviews.build
    else
      @review = Review.new
    end
  end

  def create
    @review = current_user.reviews.build(review_params)
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  def show
    @review = Review.find_by_id(params[:id])
  end

  def index
    #how do i check if it's nested & a valid id
    if @shoe = Shoe.find_by_id(params[:shoe_id])
      #nested
      @reviews = @shoe.reviews
    else
      #it's not nested
      @reviews = Review.all
    end
  end

  private

  def review_params
      params.require(:review).permit(:shoe_id, :content, :rating, :title)
  end

end
