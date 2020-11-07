module ReviewsHelper
  def display_header(review)
    if params[:shoe_id]
        content_tag(:h1, "Add a Review for #{review.shoe.flavor} -  #{review.shoe.brand.name}")
    else
      content_tag(:h1, "Create a review")
    end
  end
end
