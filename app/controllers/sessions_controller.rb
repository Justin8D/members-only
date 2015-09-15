class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downase)
  	if user && user.authenticate(params[:session][:password])
  		log_in user
  		
  end

  def destroy
  end
end
