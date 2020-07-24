class JournalsController < ApplicationController

  get "/journals" do
       @journals = Journal.all
      erb :"/journals/index"
  end

  
  get "/journals/new" do
    @journal = Journal.new 
    erb :"/journals/new"
  end

  post "/journals" do
    @journal = Journal.new(params[:title], params[:date], params[:prayer], params[:interpretation])
    @verse = verse.new(params[:book_name], params[:chapter_number],params[:verse_number], params[:verse] )
    @journal.save
    @verse.save
    if  @journal.save && @verse.save
    redirect "/journals"
    else
      erb :"/journals/new"
    end
  end

  
  get "/journals/:id" do
    @verse = Verse.find_by_id(params[:id])
    @journal = Journal.find_by_id(params[:id])
    if @journal 
      erb :"/journals/show"
    else
      redirect '/journals'
    end
  end

  
  get "/journals/:id/edit" do
    @journal = Journal.find_by_id(params[:id])
     erb :"/journals/edit"
  end

 
  patch "/journals/:id" do
    redirect "/journals/:id"
  end

  
  delete "/journals/:id/delete" do
      @journal = Journal.find_by_id(params[:id])
      @journal.destroy
      redirect "/journals"
  end
end
