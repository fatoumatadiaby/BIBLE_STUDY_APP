class UsersController < ApplicationController

  
  get '/signup' do
     erb :'users/signup'
  end
  
  get '/login' do
     erb :'users/login'
  end

  post '/login' do
      @user = User.find_by_username(params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id 
      redirect '/users/profile'
    else
      erb :'users/login'
    end
  end
  
  post '/signup' do
    @user = User.new(username: params[:username], password: params[:password], first_name: params[:first_name], last_name: params[:last_name])
    @user.save 
    session[:user_id] = @user.id
    if @user.save
      redirect '/users/profile'
    else
      erb :'users/signup'
   end
 end

 get '/users/profile' do
       
     erb :'users/profile'
 end

 get '/logout' do
    session.clear
    redirect to '/'
 end

end
