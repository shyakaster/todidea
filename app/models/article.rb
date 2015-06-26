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

  #named scopes

  scope :sorted, lambda{order('articles.created_at DESC')}
end
