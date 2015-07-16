# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  password   :string(255)
#  position   :integer
#  visible    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  has_many :comments ,:dependent => :destroy
  has_many :articles
  has_secure_password
  acts_as_list
  #names scopes
  scope :sorted, lambda{order('users.position ASC')}
  scope :newest_first, lambda{order('created_at DESC')}
  scope :search, lambda{|query|
                 where('users.first_name LIKE ?','%#{query}%')}
  #validations
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  FORBIDDEN_USERNAMES = ['littlebopeep','humptydumpty','marymary','nyox']
  validates :first_name, presence: true,length: {maximum: 50}
  validates :last_name, presence: true,length: {maximum: 50}
  validates :email, presence: true,format: {with: VALID_EMAIL_REGEX}
  validates :password ,presence: true,length: {minimum: 6}

  def name
    "#{first_name} #{last_name}"
  end

end
