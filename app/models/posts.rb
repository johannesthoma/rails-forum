class Posts < ActiveRecord::Base
	attr_accessible :user_id, :title, :text
	belongs_to :users
	has_many :answers, :class_name => "Posts", :foreign_key => :parent_post_id

	validates_presence_of :title, :text
end
