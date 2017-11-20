class Concert < ActiveRecord::Base
  belongs_to :venue
  belongs_to :band
  has_many :concert_user_comments
  has_many :users, through: :concert_user_comments



end
