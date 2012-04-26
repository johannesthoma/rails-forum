class Posts < ActiveRecord::Base
	belongs_to :users
	has_many :parent_posts, :class_name => "Posts"
end
