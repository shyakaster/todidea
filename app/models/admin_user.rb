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

class AdminUser < ActiveRecord::Base
  has_many :articles,:dependent => :destroy
  has_many :comment_edits
  has_many :comments, :through => :comment_edits
  has_many :photographs

  has_secure_password
  FORBIDDEN_USERNAMES=['nyox','dick']

  #named scopes
  scope :sorted, lambda{order('admin_users.first_name ASC,admin_users.last_name ASC')}
  scope :newest_first, lambda{order('created_at DESC')}
  scope :search, lambda{|query|
                 where('users.first_name LIKE ?','%#{query}%')}
  validates :first_name,presence: true,length: {maximum: 25}
  validates :last_name,presence: true,length: {maximum: 25}
  validates :username,presence: true,length: {maximum: 25}
  validates :password,presence: true,length: {minimum: 6}

  validate :username_is_allowed

  def username_is_allowed
    if FORBIDDEN_USERNAMES.include?(username)
      errors.add(:username,'has been restricted from use')
    end
  end

  def name
    "#{first_name} #{last_name}"
  end

end
