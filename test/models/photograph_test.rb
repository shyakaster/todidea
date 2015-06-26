# == Schema Information
#
# Table name: photographs
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  caption      :text(65535)
#  permalink    :text(65535)
#  file_name    :string(255)
#  content_type :string(255)
#  size         :integer
#  visible      :boolean
#  position     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class PhotographTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
