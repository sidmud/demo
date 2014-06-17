class Song < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :composer, presence: true
	validates :movie_id, presence: true
end
