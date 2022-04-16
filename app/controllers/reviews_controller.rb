class ReviewsController < InheritedResources::Base

  private

    def review_params
      params.require(:review).permit(:user_id, :content, :rating, :cafe_id)
    end

end
