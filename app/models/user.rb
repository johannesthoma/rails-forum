class User < ActiveRecord::Base
	has_many :posts
	attr_accessible :login_name, :first_name, :last_name, :email, :password
	validates_presence_of :login_name, :first_name, :last_name, :email, :password
	validates_uniqueness_of :login_name
end
