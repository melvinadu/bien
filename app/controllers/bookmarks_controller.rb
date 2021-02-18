class BookmarksController < ApplicationController

  before_action :check_login

  def create
    #find the review we're bookmarking
    @review = Review.find(params[:review_id])

    @bookmark = @review.bookmarks.new
    @bookmark.user = @current_user

    @bookmark.save

    #redirect to the review page
    redirect_to review_path(@review)

  end

  def destroy
    #find the review we're bookmarking
    @review = Review.find(params[:review_id])

    #delete all reviews where they are the current users'
    @review.bookmarks.where(user: @current_user).delete_all

    #redirect to the review page
    redirect_to review_path(@review)
  end

end
