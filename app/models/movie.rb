class Movie < ActiveRecord::Base
	has_many :songs, dependent: :destroy
	has_many :movie_actors, dependent: :destroy
	has_many :actors, through: :movie_actors
	has_many :ratings, as: :ratable, dependent: :destroy
	validates :name, presence: true, uniqueness: true
	accepts_nested_attributes_for :songs, allow_destroy: true
	accepts_nested_attributes_for :movie_actors, allow_destroy: true
	accepts_nested_attributes_for :actors
	accepts_nested_attributes_for :ratings
end
