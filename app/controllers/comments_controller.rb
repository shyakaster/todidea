class CommentsController < ApplicationController
  before_action :confirm_log_in
  before_action :find_article
  before_action :find_photograph

  def index
    #@comments=Comment.where(:article_id=>@article.id).sorted
    if @article
      @comments=@article.comments.sorted
    else
      @comments=@photograph.comments.sorted
    end
  end

  def show
    @comment= Comment.find(params[:id])
    @comment_count=Comment.count + 1
  end
  def new
    if @article
      @comment= @article.comments.new
    else
      @comment=@photograph.comments.new
    end
    @users=User.sorted
    @articles=Article.sorted
    @photographs=Photograph.sorted
  end

  def create
    if @article
       @comment=@article.comments.create(comments_params)
       if @comment.save
         flash[:notice]='Article comment has been successfully created'
         redirect_to(:action=>'index',:article_id=>@article.id)
       else
         @users=User.sorted
         @comment_count=@article.comments.count + 1
         render('new')
       end
    else
      @comment=@photograph.comments.create(comments_params)
      if @comment.save
        flash[:notice]='Photograph comment has been successfully created'
        redirect_to(:action=>'index',:photograph_id=>@photograph.id)
      else
        @users=User.sorted
        @comment_count=@photograph.comments.count + 1
        render('new')
      end
    end

  end
  def edit
    if @article
     @comment= @article.comments.find(params[:id])
    else
      @comment=@photograph.comments.find(params[:id])
    end
    @users=User.sorted
    @articles=Article.sorted
    @photographs=Photograph.sorted
  end
  def update
    if @article
       @comment=@article.comments.find(params[:id])
       if @comment.update_attributes(comments_params)
           flash[:notice]='Article comment was successfully updated!'
           redirect_to(:action=>'show',:id=>@comment.id,:article_id=>@article.id) and return
       else
         @comment_count=@article.comments.count
         render 'edit'
       end
    else
      @comment=@photograph.comments.find(params[:id])
      if @comment.update_attributes(comments_params)
        flash[:notice]='Photograph comment was successfully updated!'
        redirect_to(:action=>'show',:id=>@comment.id,:photograph_id=>@photograph.id) and return
      else
        @comment_count=@photograph.comments.count
        render 'edit'
      end

    end
  end

  def delete
    if @article
      @comment= @article.comments.find(params[:id])
    else
      @comment=@photograph.comments.find(params[:id])
    end
  end
  def destroy
    if @article
       comment= @article.comments.find(params[:id]).destroy
       flash[:notice]="Article comment was #{comment.comment} successfully destroyed!"
       redirect_to(:action=>'index',:article_id=>@article.id)
    else
      comment= @photograph.comments.find(params[:id]).destroy
      flash[:notice]="Photograph comment was #{comment.comment} successfully destroyed!"
      redirect_to(:action=>'index',:photograph_id=>@photograph.id)
    end

  end
  private

  def comments_params
    params.require(:comment).permit(:user_id,:comment,:permalink,:visible,:photograph_id,:article_id)
  end

  def find_article
    if params[:article_id]
      @article=Article.find(params[:article_id])
    end
  end
  def find_photograph
    if params[:photograph_id]
      @photograph=Photograph.find(params[:photograph_id])
    end
  end

end
