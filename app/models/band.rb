class Band < ActiveRecord::Base
has_many :venues, through: :concerts
has_many :concerts

  

end
