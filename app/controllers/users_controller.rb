class UsersController < ApplicationController
  layout 'application'
  before_action :confirm_log_in
  def index
  @users=User.sorted
  end
  def show
  @user=User.find(params[:id])
  end
  def new
   @user=User.new
   @user_count=User.count + 1
  end
  def create
    @user=User.create(user_params)
    if @user.save
      flash[:notice]='User has been successfully created'
      redirect_to(:action=>'index')
    else
      #@user_count=User.count + 1
      render 'new'
    end
  end
  def edit
   @user=User.find(params[:id])
   @user_count= User.count
  end
  def update
    @user=User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice]='User was successfully updated'
      redirect_to(:action=>'show',:id=>@user.id) and return
    else
      #@user_count=User.count
      render('edit')
    end

  end
  def delete
   @user=User.find(params[:id])
  end
  def destroy
  user=User.find(params[:id]).destroy
    flash[:notice]="User #{user.first_name} has been successfully deleted"
    redirect_to(:action=>'index')
  end
  private

  def user_params
    params.require(:user).permit(:id,:first_name,:last_name,:email,:password,:position,:visible)
  end

end
