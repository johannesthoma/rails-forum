class Question < ActiveRecord::Base
	attr_accessible :user_id, :title, :text
	belongs_to :users
	has_many :answers

	validates_presence_of :title, :text
end
