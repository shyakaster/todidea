class AdminUsersController < ApplicationController
  before_action :confirm_log_in
  layout 'admin_layout'
    def index
      @admin_users = AdminUser.sorted
    end
    def show
      @admin_user=AdminUser.find(params[:id])
    end
    def new
      @admin_user=AdminUser.new
      @admin_user_count=AdminUser.count + 1
    end
    def create
      @admin_user=AdminUser.create(admin_user_params)
      if @admin_user.save
        flash[:notice]='User has been successfully created'
        redirect_to(:action=>'index') and return
      end
    else
      #@admin_user_count=AdminUser.count + 1
      render('new')
    end

    def edit
      @admin_user=AdminUser.find(params[:id])
      @admin_user_count= AdminUser.count

    end
    def update
      @admin_user=AdminUser.find(params[:id])
      if @admin_user.update_attributes(admin_user_params)
        flash[:notice]='User has been successfully updated'
        redirect_to(:action=>'show',:id=>@admin_user.id) and return
      end
    else
      #@admin_user_count=AdminUser.count
      render('edit')
    end

    def delete
      @admin_user=AdminUser.find(params[:id])
    end
    def destroy
      admin_user=AdminUser.find(params[:id]).destroy
      flash[:notice]="User #{admin_user.first_name} has been successfully deleted"
      redirect_to(:action=>'index')
    end


    private
    def admin_user_params
      params.require(:admin_user).permit(:id, :username,:password,:first_name,:last_name,:position,:visible)
    end
end

