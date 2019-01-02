class SessionsController < ApplicationController
  def new
  end

  def create
    if logged_in?
      redirect_to '/'
    end
    if params[:name] && params[:name] != ''
      session[:username] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
  end
end
