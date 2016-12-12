class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs, dependent: :destroy
  validates :title, :artist, :year, :tracks, :length, presence: true
  validates :title, uniqueness: true
end
