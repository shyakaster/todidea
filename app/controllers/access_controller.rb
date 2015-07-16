class AccessController < ApplicationController
  layout 'application'
  before_action :confirm_log_in, :except => [:login,:attempt_login,:logout]
  def index
  end

  def login
  end



  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user=AdminUser.where(:username => params[:username]).first
      if found_user
        authorised_user=found_user.authenticate(params[:password])
      end
      if authorised_user
        session[:username]=authorised_user.username
        session[:user_id]=authorised_user.id
        #flash[:notice]="You are logged as #{session[:username]}"
        redirect_to(:action => 'index')
      else
        flash[:notice]='You are username/password combination is wrong'
        redirect_to(:action=>'login')
      end
    end

  end
  def logout
    flash[:notice]='You are now logged out'
    session[:username]=nil
    session[:user_id]=nil
    redirect_to(:action=>'login')

  end
end
