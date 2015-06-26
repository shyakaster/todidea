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

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
