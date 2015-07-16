# == Schema Information
#
# Table name: photograph_comments
#
#  id            :integer          not null, primary key
#  photograph_id :integer
#  comment_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class PhotographComment < ActiveRecord::Base
  belongs_to :photograph
  belongs_to :comment
  after_save :touch_comment

  def touch_comment
    comment.touch
  end
end
