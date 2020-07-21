class JournalsController < ApplicationController

  get "/journals" do
       @journals = Journal.all 
      erb :"/journals/index"
  end

  
  get "/journals/new" do
    erb :"/journals/new.html"
  end

  # POST: /journals
  post "/journals" do
    redirect "/journals"
  end

  # GET: /journals/5
  get "/journals/:id" do
    erb :"/journals/show.html"
  end

  # GET: /journals/5/edit
  get "/journals/:id/edit" do
    erb :"/journals/edit.html"
  end

  # PATCH: /journals/5
  patch "/journals/:id" do
    redirect "/journals/:id"
  end

  # DELETE: /journals/5/delete
  delete "/journals/:id/delete" do
    redirect "/journals"
  end
end
