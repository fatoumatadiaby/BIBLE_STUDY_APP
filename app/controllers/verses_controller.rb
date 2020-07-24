class VersesController < ApplicationController
  use Rack::Flash
 
  get "/verses" do
    @verse = Verse.all
   erb :"/verses/index"
  end

  
  get "/verses/matthew" do
    erb :"/verses/matthew"
  end

  get '/verses/chapter' do
    @verse = Verse.all
    erb :'/verses/chapter'

  end 
  get "/verses/:id" do
    @verse = Verse.find_by_id(params[:id])
    if @verse
      erb :"/journals/new"
    else
      redirect '/verses'
    end
  end
end
