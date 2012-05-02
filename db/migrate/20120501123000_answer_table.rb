class AnswerTable < ActiveRecord::Migration
	def self.up
		create_table :answers do |t|
			t.text :text
			t.integer :user_id
			t.integer :question_id
		end

		rename_table :posts, :questions
		remove_column :questions, :parent_post_id
	end

	def self.down
		drop_table :answers
		rename_table :questions, :posts
		add_column :posts, :parent_post_id, :integer
	end
end
