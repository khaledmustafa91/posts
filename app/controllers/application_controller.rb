class ApplicationController < ActionController::API

  def paginate(collection:)
    collection = collection.page(params[:page]).per(params[:per_page])
    render(json: collection)
  end
end
