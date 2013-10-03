class ApplicationController < ActionController::Base

	include CurrentCart
	before_action :set_cart, :authorize
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  	def authorize
  		unless User.find_by(id: session[:user_id]) || (User.count.zero? && (params[:action] == 'new' || params[:action] == 'create'))
        session[:original_url] = request.original_url
  			redirect_to login_path, notice: 'Please login'  			
  		end
  	end

end
