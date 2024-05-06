class PostsController < ApplicationController

  def index
    posts = Post.by_rate

    paginate(collection: posts)
  end

end
