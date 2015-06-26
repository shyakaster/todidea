# == Schema Information
#
# Table name: admin_users
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  first_name      :string(255)
#  last_name       :string(255)
#  username        :string(255)
#  position        :integer
#  visible         :boolean
#  password_digest :string(255)
#

require 'test_helper'

class AdminUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
