class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && params[:name] != ''
      session[:username] = params[:name]
    else
      redirect_to '/login'
    end
  end

  def destroy
  end
end
