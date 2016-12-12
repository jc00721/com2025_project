class Song < ActiveRecord::Base
  belongs_to :album
  validates :title, :album, :length, :genre, presence: true
end
