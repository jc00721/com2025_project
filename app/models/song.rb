class Song < ActiveRecord::Base
  belongs_to :album
  validates :title, :album, :length, :single, :genre, presence: true
end
