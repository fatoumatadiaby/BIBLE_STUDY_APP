require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV['SINATRA_SECRET']
  end

  get "/" do
     erb :'welcome'
   
 end



  


 helpers do
  #  def logged_in?
  #   !!session[:user_id]
  #  end
  
   def login_error
    flash[:error] = "Please Login"
    redirect to "/"
   end
  
  #  def current_user
  #   User.find_by_id(session[:user_id])
  #  end
 end
end
