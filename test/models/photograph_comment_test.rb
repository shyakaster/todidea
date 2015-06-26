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

require 'test_helper'

class PhotographCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
