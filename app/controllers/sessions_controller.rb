<<<<<<< HEAD
# -*- coding: utf-8 -*-
=======
>>>>>>> 2ab2344959793e0755899109882cf6ce4bba394d
class SessionsController < ApplicationController
  def create
    user = User.find_or_create_from_auth_hash(request.env['omniauth.auth'])
    session[:user_id] = user.id
<<<<<<< HEAD
    redirect_to root_path, notice: 'ログインしました'
=======
    redirect_to root_path, notice: 'Login Succeeded'
>>>>>>> 2ab2344959793e0755899109882cf6ce4bba394d
  end

  def destroy
    reset_session
<<<<<<< HEAD
    redirect_to root_path, notice: 'ログアウトしました'
  end

  def failure
    redirect_to root_url, alert: "ログインに失敗しました"
=======
    redirect_to root_path, notice: 'Log Out'
>>>>>>> 2ab2344959793e0755899109882cf6ce4bba394d
  end
end
