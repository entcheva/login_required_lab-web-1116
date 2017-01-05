class SessionsController < ApplicationController

  def new
  end

  def create
    unless params[:name].blank?
      session[:name] = params[:name]
      redirect_to secrets_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to login_path
  end


end
