class Users::PostsController < ApplicationController

  def index
    posts = Post.by_user_id(params[:user_id]) 

    paginate(collection: posts)
  end

  def create
    post = Post.new(create_params)

    if post.save
      render json: post, status: :created
    else
      render json: post.errors, status: 422
    end
  end

  def create_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end
