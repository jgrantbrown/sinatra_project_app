class Concert < ActiveRecord::Base
  belongs_to :venue
  belongs_to :band
  has_many :concert_users
  has_many :users, through: :concert_users



end
