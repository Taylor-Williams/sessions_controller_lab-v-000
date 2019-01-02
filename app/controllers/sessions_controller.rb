class SessionsController < ApplicationController
  def new
  end

  def create
    if logged_in?
      redirect_to '/'
    end
    if params[:username] && params[:username] != ''
      session[:username] = params[:username]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    if session[:username]
      session.destroy("username")
    end
  end
end
