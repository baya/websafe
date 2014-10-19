# -*- coding: utf-8 -*-
class Csrf::AdminUserController < ApplicationController

  before_filter :auth_admin

  def new
  end

  def unsafe_create
    admin_user = AdminUser.create admin_user_params
    if admin_user
      render text: 'ok'
    else
      redirect_to :new
    end
  end

  def create
  end

  private

  def admin_user_params
    params.required(:admin).permit(:login, :password)
  end

  def auth_admin
    if current_admin.nil?
      render text: '请登录'
    end
  end

  def current_admin
    @current_admin ||= AdminUser.where(id: session[:auid]).first
  end

  helper_method :current_admin

end
