# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  comment    :text(65535)
#  permalink  :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  visible    :boolean
#

class Comment < ActiveRecord::Base
  belongs_to :user
  has_many :article_comments
  has_many :articles,:through => :article_comments,dependent: :destroy
  has_many :photograph_comments
  has_many :photographs,through: :photograph_comments
  has_many :comment_edits
  has_many :editors, :through=>:comment_edits,:class_name => 'AdminUser'
  acts_as_list
  before_validation :add_default_permalink
  #after_save :touch_photograph
  #after_save :touch_article
  scope :sorted,lambda{order('comments.position ASC')}
  scope :search, lambda{|query|
               where('comments.comment LIKE ?','%#{query}%')}

  #validates_length_of :name, :maximum => 255
  validates_presence_of :permalink
  def add_default_permalink
    if permalink.blank?
      self.permalink="#{id}-#{comment.parameterize}"
    end
  end


end
