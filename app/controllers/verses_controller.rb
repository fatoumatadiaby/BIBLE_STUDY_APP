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
  # post "/verses" do
  #   redirect "/verses"
  # end

  # # GET: /verses/5
  # get "/verses/:id" do
  #   erb :"/verses/show.html"
  # end

  # # GET: /verses/5/edit
  # get "/verses/:id/edit" do
  #   erb :"/verses/edit.html"
  # end

  # # PATCH: /verses/5
  # patch "/verses/:id" do
  #   redirect "/verses/:id"
  # end

  # # DELETE: /verses/5/delete
  # delete "/verses/:id/delete" do
  #   redirect "/verses"
  # end
end
