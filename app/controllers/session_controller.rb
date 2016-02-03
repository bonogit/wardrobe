class SessionController < ApplicationController
  def new
    
  end
  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/show'
    else
      redirect_to '/signin'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

  def show_regi
    
  end

  def show_signin
    
  end
  def create_user
     @newuser = User.new
     @newuser.username = params[:user]
     @newuser.email = params[:email]
     @newuser.password = params[:password]
     @newuser.save
     redirect_to '/signin'
  end
end
