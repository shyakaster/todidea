# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  article    :text(65535)
#  permalink  :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  visible    :boolean
#

class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_comments
  has_many :comments,  through: :article_comments,:dependent => :destroy
  has_many :comment_edits,:through => :comments
  acts_as_list
  #named scopes
  before_validation :add_default_permalink

  scope :sorted, lambda{order('articles.position ASC')}

  validates_presence_of :permalink

  private
  def add_default_permalink
    if permalink.blank?
      self.permalink="#{id}-#{article.parameterize}"
    end
  end

end
