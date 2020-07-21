class VersesController < ApplicationController
  use Rack::Flash
 
  get "/verses" do
    
   erb :"/verses/index"
  end

  
  get "/verses/matthew" do
    erb :"/verses/matthew"
  end

  get '/verses/chapter' do
    erb :'/verses/chapter'

  end 
  
end
