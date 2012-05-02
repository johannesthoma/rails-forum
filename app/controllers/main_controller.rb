class MainController < ApplicationController
	def index
		@questions = Question.all
	end

	def ask_question
		@question = Question.new :user_id=>session[:user_id]
	end

	def submit_question
		@question = Question.create params[:question]+{:user_id => session[:user_id]}
		@question.user_id = session[:user_id]
		@question.save

		if @question.errors.empty?
			redirect_to :action => "index"
		else	
			@msg = "There were errors"
			render :ask_question
		end
	end
	
	def show_question
		@question = Question.find params[:id]
	end

	def answer_question
		@question = Question.find params[:id]
		@answer = @question.answers.new :user_id=>session[:user_id]
	end

	def submit_answer
		@question = Question.find params[:id]
		@answer = @question.answers.create params[:answer]
		@answer.user_id = session[:user_id]
		@answer.save

		if @answer.errors.empty?
			redirect_to :action => "index"
		else	
			@msg = "There were errors"
			render :ask_question
		end
	end
end

