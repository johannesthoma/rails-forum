class Users < ActiveRecord::Base
	has_many :posts
	validates_presence_of :login_name, :first_name, :last_name, :email, :password
	validates_uniqueness_of :login_name
end
