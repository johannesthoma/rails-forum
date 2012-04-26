class AddSomeTables < ActiveRecord::Migration
	def self.up
		create_table :users do |t|
			t.string :login_name
			t.string :first_name
			t.string :last_name
			t.string :email
		end

		create_table :posts do |t|
			t.text :text
			t.string :title
			t.integer :user_id
			t.integer :parent_post_id
		end
	end

	def self.down
		drop_table :users
		drop_table :posts
	end
end
