class PhotographsController < ApplicationController
  before_action :confirm_log_in
  def new
    @photograph=Photograph.new
    @users=User.sorted
    @photograph_count=Photograph.count + 1
  end

  def create
    @photograph=Photograph.create(photograph_params)
    if @photograph.save
      flash[:notice]='Photograph was successfully created'
      redirect_to(:action=>'index')
    else
      render 'new'
    end
  end

  def update
    @photograph=Photograph.find(params[:id])
    if @photograph.update_attributes(photograph_params)
      flash[:notice]='Photograph was successfully updated'
      redirect_to(:action=>'show',:id=>@photograph.id) and return
    else
      render 'edit'
    end
  end

  def edit
    @photograph=Photograph.find(params[:id])
    @users=User.sorted
    @photograph_count=Photograph.count + 1
  end
  def delete
    @photograph=Photograph.find(params[:id])
  end

  def destroy
    photograph=Photograph.find(params[:id]).destroy
    flash[:notice]="Photograph #{photograph.file_name} was successfully destroyed"
    redirect_to(:action=>'index')
  end

  def index
    @photographs=Photograph.sorted

  end

  def show
    @photograph=Photograph.find(params[:id])
    @users=User.sorted
  end
  private
  def photograph_params
    params.require(:photograph).permit(:file_name,:content_type,:size,:caption,:user_id,:permalink,:position,
                                       :visible,:comment_id)
  end
end
