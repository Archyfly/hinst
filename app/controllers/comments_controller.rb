class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @comments = post.comments.all
  end

  def new
    @comment = post.comments.create
  end

end
