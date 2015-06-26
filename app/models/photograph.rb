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

class Photograph < ActiveRecord::Base
  belongs_to :user
  has_many :photograph_comments
  has_many :comments, :through => :photograph_comments,dependent: :destroy
  has_many :comment_edits,:through => :comments

  #name scopes
  scope :sorted, lambda{order('photographs.position ASC')}
  #validations

  #validates :caption,presence: true,length: {maximum: 3..255}

end
