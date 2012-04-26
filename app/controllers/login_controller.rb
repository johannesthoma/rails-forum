class LoginController < ApplicationController
	def index
	end

	def login
		u = Users.find_by_login_name params[:login_name]
		if u and params[:password] == u.password then
			session[:user_id] = u.id
			redirect_to :controller => "main"
		else
			@msg = "No such user or password wrong"
			render :action => "index"
		end
	end
end
			
