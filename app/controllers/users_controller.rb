class UsersController < ApplicationController

  
  get '/signup' do
     erb :'/users/signup'
  end
  
  get '/login' do
     erb :'/users/login'
  end

  post '/signup' do
    if params[:password] == params[:confirm_password]
        @user = User.new(username: params[:username], password: params[:password], first_name: params[:first_name], last_name: params[last_name])
        @user.save
        session[:user_id] = @user.id
        redirect to '/users/profile'
      else
       flash[:error] = "the details inputted are invalid please try again!"
       redirect to '/users/signup'
     end
 end

  post '/login' do
      @user = User.find_by(username: params[:username], password: params[:password])
    if user && user.authenticate(params[:username][:password])
      session[:user_id] = @user.id 
      redirect '/users/profile'
    else
      redirect to '/'
    end
  end
 
  get '/users/profile' do
     @user = User.find(session[:user_id])
      erb :'/users/user_profile'
  end

  post '/user/profile' do
    redirect to '/user/profile'
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
