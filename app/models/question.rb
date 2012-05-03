class Question < ActiveRecord::Base
	attr_accessible :user_id, :title, :text
	belongs_to :user
	has_many :answers

	validates_presence_of :title, :text
end
