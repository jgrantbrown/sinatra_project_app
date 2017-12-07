class Comment < ActiveRecord::Base

  belongs_to :user
  belongs_to :concert

  include ActiveModel::Validations
  validates :comment, presence: true
  
end
