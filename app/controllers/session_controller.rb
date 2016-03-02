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
    @newuser = User.new
  end

  def show_signin
    
  end
  def create_user
     @newuser = User.new
     @newuser.username = params[:username]
     @newuser.email = params[:email]
     @newuser.password = params[:password]
     if @newuser.save
        flash[:success] = "You have sign up! Sign in to your wardrobe."
        redirect_to '/signin'
      else
        render 'show_regi'
      end
  end
  def show_profile
     @currentUser = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirm)
    end
end
