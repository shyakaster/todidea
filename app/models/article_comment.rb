# == Schema Information
#
# Table name: article_comments
#
#  id         :integer          not null, primary key
#  article_id :integer
#  comment_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArticleComment < ActiveRecord::Base
  belongs_to :article
  belongs_to :comment
  belongs_to :user
  belongs_to :admin_user

  after_save :touch_comment

  def touch_comment
    comment.touch
  end
end
