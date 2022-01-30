class SessionsController < ApplicationController
 def new
 end

 def create
    email = params[:email]
    password = params[:userpassword]
    user = User.find_by(:email => email)
    if user && user.password_digest == password
        response = {
            :loggedin => true
        }
        session[:user_id] = user.id
        redirect_to landing_path
    else 
        @loggedin = false
        render "new"
    end
    
    # User.find (email) if it exists then match for password else throw error
    # if it matchest tehn create session
    # render json: params
    # email = params[:username]
    
    # User.create(
    #     :email => email,
    #     :password_digest => password
    # )
    # @success = true
    # # @message = "your acc is created"
    # render "new"
 end

 def destroy
    session[:user_id] = nil
    redirect_to landing_path
 end
end
