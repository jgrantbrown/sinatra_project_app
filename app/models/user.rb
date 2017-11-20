class User < ActiveRecord::Base
  has_many :concerts, through: :concert_user_comments
  has_many :concert_user_comments
  has_secure_password

end
