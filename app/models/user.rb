class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :ratings, as: :ratable, dependent: :destroy
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	#validates :name, presence: true, uniqueness: true
	validates_associated :ratings
end
