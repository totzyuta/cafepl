<<<<<<< HEAD
# -*- coding: utf-8 -*-
class ApplicationController < ActionController::Base
=======
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
>>>>>>> 2ab2344959793e0755899109882cf6ce4bba394d
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

<<<<<<< HEAD
  rescue_from Exception, with: :error500
  rescue_from ActiveRecord::RecordNotFound, ActionController::RoutingError, with: :error404

  def error404
    render 'error404', status: 404, formats: [:html]
  end

  def error500(e)
    logger.error [e, *e.backtrace].join("\n")
    render 'error500', status: 500, formats: [:html]
  end

=======
>>>>>>> 2ab2344959793e0755899109882cf6ce4bba394d
  private

  def current_user
    return unless session[:user_id]
<<<<<<< HEAD
    @current_user ||= User.find(session[:user_id])
=======
    @curent_user ||= User.find(session[:user_id])
>>>>>>> 2ab2344959793e0755899109882cf6ce4bba394d
  end

  def logged_in?
    !!session[:user_id]
  end

  def authenticate
    return if logged_in?
<<<<<<< HEAD
    redirect_to root_path, alert: 'ログインしてください'
=======
    redirect_to root_path, alert: 'Please Login'
>>>>>>> 2ab2344959793e0755899109882cf6ce4bba394d
  end
end
