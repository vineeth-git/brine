class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def not_found
    render json: {error: 'Resource Not Found'}, status: 404
  end
end
