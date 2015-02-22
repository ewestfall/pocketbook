class SessionsController < ApplicationController

	  def new
	  end

	  def create
	  	@user = User.new(user_params)
	  		if @user.save
	  			session[:user_id] = @user.user_id
	  			redirect_to '/about'
	  		else
	  			redirect_to '/login'
	  		end
	  end

def destroy
	session[:user_id] = nill
	redirect_to('/')
end


end
