require 'active_model'

class Concert < ActiveRecord::Base
  include ActiveModel::Validations

  belongs_to :venue
  belongs_to :band
  has_many :concert_users
  has_many :users, through: :concert_users
  has_many :comments

# Add validations for venue band date
  validates :date, presence: true

  attr_accessor :venue_name, :band_name

  def band_name
    self.band.name if self.band
  end

  def band_name=(band_name)
    unless band_name.empty?
      self.band=Band.find_or_create_by(name: band_name)
    end
  end

  def venue_name
    self.venue.name if self.venue
  end

  def venue_name=(venue_name)
    unless venue_name.empty?
      self.venue=Venue.find_or_create_by(name: venue_name)
    end
  end

  def self.concert_exists(params)
    self.find_by(date: params['concert']['date'], band_id:params['concert']['band_id'],venue_id:params['concert']['venue_id']) != nil
  end

  def self.find_concert(params)
      self.find_by(date: params['concert']['date'], band_id:params['concert']['band_id'],venue_id:params['concert']['venue_id'])
    end

end
