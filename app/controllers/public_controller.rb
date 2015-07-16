class PublicController < ApplicationController
  before_action :setup_navigation
  layout'application'
  def index
    @sliders=Slider.all
    @article=Article.order('created_at').last

  end

  def show
    @article=Article.where(permalink:  params[:permalink],:visible => true).first
    if @article.nil?
      redirect_to(:action=>'index')
    end
  end
  private
  def setup_navigation
    @articles=Article.sorted
  end
end
