class Album < ActiveRecord::Base
  belongs_to :artist
  validates :title, :artist, :year, :tracks, :length, presence: true
end
