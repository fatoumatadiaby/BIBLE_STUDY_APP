class UsersController < ApplicationController

  
  get '/signup' do
     erb :'/users/signup'
  end
  
  get '/login' do
     erb :'/users/login'
  end

  post '/signup' do
     @user = User.new(username: params[:username], password: params[:password], first_name: params[:first_name], last_name: params[last_name])
      if @user.save
        session[:user_id] = @user.id
        redirect to '/users/profile'
      else
       flash[:error] = "the details inputted are invalid please try again!"
       erb :'/signup'
     end
 end

  post '/login' do
      @user = User.find_by_username(params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id 
      redirect '/users/profile'
    else
      flash[:error] = "the details inputted are invalid please try again!"
      redirect to '/login'
    end
  end
 
  get '/users/profile' do
     @user = User.find(session[:user_id])
      erb :'/users/user_profile'
  end

   
  
 
  get '/logout' do
    session.clear
    redirect to '/'
  end
 
  
  
  
  
  
  # get "/users/:id" do
  #   erb :"/users/sign_up"
  # end

  # GET: /users/5/edit
  # get "/users/:id/edit" do
  #   erb :"/users/edit"
  # end

  # PATCH: /users/5
  # patch "/users/:id" do
  #   redirect "/users/:id"
  # end

  # DELETE: /users/5/delete
  # delete "/users/:id/delete" do
  #   redirect "/users"
  # end
end
