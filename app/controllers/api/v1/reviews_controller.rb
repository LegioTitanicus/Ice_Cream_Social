class Api::V1::ReviewsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }
  
  def create
    review = Review.new(review_params)
    review.save
  end

  def review_params
    params.require(:review).permit([:overall, :sweetness, :mouth_feel, :taste, :comment, :manufacturer, :flavor_id, :user_id])
  end
end
