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

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
