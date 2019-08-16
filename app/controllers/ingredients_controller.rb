class IngredientsController < ApplicationController
  def new           # GET /reviews/new
    @cocktail = cocktail.find(params[:cocktail_id])
    @review = Review.new
  end

  def create        # POST /reviews
    @review = Review.new(review_params)
    # we need `cocktail_id` to associate review with corresponding cocktail
    @cocktail = cocktail.find(params[:cocktail_id])
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
