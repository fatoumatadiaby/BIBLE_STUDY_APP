class JournalsController < ApplicationController

  get "/journals" do
       @journals = current_user.journals
      erb :"/journals/index"
  end

  
  get "/journals/new" do
    @journal = Journal.new 
    erb :"/journals/new"
  end
 
  get "/verses/:verse_id/journals/new" do
    @verse = Verse.find_by_id(params[:verse_id])
    @journal = Journal.new 
    erb :"/journals/new"
  end

  post "/verses/:verse_id/journals" do
    @verse = Verse.find_by_id(params[:verse_id])
    @journal = current_user.journals.build(title: params[:title], date: params[:date], prayer: params[:prayer], interpretation: params[:interpretation], verse_id: params[:verse_id])
    if  @journal.save
      redirect "/journals"
    else
      erb :"/journals/new"
    end
  end

   get "/verses/:verse_id/journals/:id" do
     @verse = Verse.find_by_id(params[:verse_id])
     @journal = Journal.find_by(id: params[:id])
    
      erb :"/journals/show"
  end
   
  get "/verses/:verse_id/journals/:id/edit" do
     @verse = Verse.find_by_id(params[:verse_id])
     @journal = Journal.find_by_id(params[:id])
     if current_user == @journal.user_id
       erb :"/journals/edit"
     else
       redirect :'journals'
     end 
    
   end
  
  patch "/verses/:verse_id/journals/:id" do 
    @verse = Verse.find_by_id(params[:verse_id])
    @journal = Journal.find_by_id(params[:id])
    if current_user == @journal.user_id && @journal.update(
     title: params[:title],
     prayer: params[:prayer],
     interpretation: params[:interpretation]
     )
     redirect "/journals"
    else
     erb :"/journals/edit"
   end
  end
 end

  
  delete "/journals/:id/delete" do
      @journal = Journal.find_by_id(params[:id])
     if currrent_user == @journal.user_id
      @journal.destroy
      redirect "/journals"
    else
      redirect "/journals"
  end
end
