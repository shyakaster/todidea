class ArticlesController < ApplicationController
  before_action :confirm_log_in
  def new
    @article=Article.new
    @users=User.sorted
    @logged_in_user=session[:user_id]
  end

  def create
    @article=Article.create(article_params)
    if @article.save
      flash[:notice]='User was successfully created'
      redirect_to(:action=>'index')
    else
      render 'new'
    end
  end

  def update
    @article=Article.find(params[:id])
    if @article.update_attributes(article_params)
      flash[:notice]='User has been successfully updated'
      redirect_to(:action=>'show',:id=>@article.id) and return
    else
      render 'edit'
    end
  end

  def edit
    @article=Article.find(params[:id])
    @users=User.sorted
  end
  def delete
    @article=Article.find(params[:id])
  end

  def destroy
    article=Article.find(params[:id]).destroy
    flash[:notice]='Article was successfully deleted'
     redirect_to(:action=>'index')
  end

  def index
    @articles=Article.sorted
  end

  def show
    @article=Article.find(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:article,:user_id,:permalink,:visible)
  end
end
