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

require 'test_helper'

class CommentEditTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
