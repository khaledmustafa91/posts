class Users::Posts::ReviewsController < ApplicationController

  def create
    # Create review by user id and post id
    review = Review.new(create_params)

    if review.save
      render json: review, status: :created
    else
      render json: review.errors, status: 422
    end
  end

  def create_params
    params.require(:review).permit(:user_id, :post_id, :rate, :comment)
  end
end
