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
