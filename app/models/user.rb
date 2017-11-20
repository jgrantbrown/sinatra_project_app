class User < ActiveRecord::Base
  has_many :concert_users
  has_many :concerts, through: :concert_users


  has_secure_password

  validates_presence_of :username, :email, :password

end
