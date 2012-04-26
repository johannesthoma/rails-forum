class Users < ActiveRecord::Base
	has_many :posts
	validates_presence_of :login_name, :first_name, :last_name, :email
end
