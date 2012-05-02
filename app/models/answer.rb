class Answer < ActiveRecord::Base
	attr_accessible :user_id, :text
	belongs_to :questions
	belongs_to :users

	validates_presence_of :text
end
