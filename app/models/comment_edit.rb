# == Schema Information
#
# Table name: comment_edits
#
#  id            :integer          not null, primary key
#  summary       :text(65535)
#  comment_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  admin_user_id :integer
#

class CommentEdit < ActiveRecord::Base
  belongs_to :editor, :class_name => 'AdminUser',:foreign_key => 'admin_user_id'
  belongs_to :comment

end
