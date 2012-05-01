class MainController < ApplicationController
	def index
		@questions = Posts.find :all, :conditions => "parent_post_id is null"
	end

	def ask_question
		@question = Posts.new :user_id=>session[:user_id]
	end

	def submit_question
		@question = Posts.create params[:question]
		if @question.errors.empty?
			redirect_to :action => "index"
		else	
			@msg = "There were errors"
			render :ask_question
		end
	end
	
	def show_question
		@question = Posts.find params[:id]
	end
end

