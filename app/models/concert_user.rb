class ConcertUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :concert
  belongs_to :comment


end
