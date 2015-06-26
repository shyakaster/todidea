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

require 'test_helper'

class ArticleCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
