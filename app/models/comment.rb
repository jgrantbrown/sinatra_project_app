class Comment < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :concert
# Need to associate a comment to a concert and user
# has_many :users, through: :concert_user
# has_many :concerts, through: :concert_user
end