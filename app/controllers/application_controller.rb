class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :authtoken

  def authtoken
    session[:authtoken]
  end
end
