module SessionsHelper

  def self.logged_in?
    !!session[:username]
  end
end
