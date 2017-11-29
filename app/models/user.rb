require 'active_model'

class User < ActiveRecord::Base
  include ActiveModel::Validations

  validates_presence_of :username
  validates_presence_of :password
  validates_presence_of :email, uniqueness: true

  has_many :concert_users
  has_many :concerts, through: :concert_users


  has_secure_password


end
