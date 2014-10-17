# -*- coding: utf-8 -*-
class Csrf::SessionController < ApplicationController

  def new
  end

  def create
    @admin = authenticate_admin
    if @admin
      session[:auid] = @admin.id
      render text: '登录成功'
    else
      redirect_to :new
    end
  end

  def destroy
  end

  private

  def authenticate_admin
    admin = AdminUser.where(login: params[:login]).first
    admin and admin.password == params[:password] ? admin : nil
  end

end
