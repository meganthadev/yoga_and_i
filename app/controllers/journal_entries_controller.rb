class JournalEntriesController < ApplicationController

  get '/journal_entries' do
    @journal_entries = JournalEntry.all
    erb :'journal_entries/index'
  end

  get '/journal_entries/new' do
    erb :'/journal_entries/new'
  end

  post '/journal_entries' do
    if !logged_in?
      redirect '/'
    end
    if params[:content] != ""
      @journal_entry = JournalEntry.create(content: params[:content], user_id: current_user.id)
      redirect "/journal_entries/#{@journal_entry.id}"
    else
      redirect '/journal_entries/new'
    end
  end

  get '/journal_entries/:id' do
    set_journal_entry
    erb :'/journal_entries/show'
  end

  get '/journal_entries/:id/edit' do
    set_journal_entry
    if logged_in?
      if authorized_to_edit?(@journal_entry)
      erb :'/journal_entries/edit'
    else
      redirect "users/#{current_user.id}"
    end
  else
    redirect '/'
   end
  end

  patch '/journal_entries/:id' do
    set_journal_entry
    if logged_in?
     if authorized_to_edit?(@journal_entry) && params[:content] != ""
       @journal_entry.update(content: params[:content] )
       redirect "/journal_entries/#{@journal_entry.id}"
    else
      redirect "/users/#{@current_user.id}"
   end
 else
   redirect '/'
  end
 end

 delete '/journal_entries/:id' do
   set_journal_entry
   if authorized_to_edit?(@journal_entry)
     @journal_entry.destroy
     redirect '/journal_entries'
   else
     redirect '/journal_entries'
  end
 end

 private

 def set_journal_entry
   @journal_entry = JournalEntry.find(params[:id] )
 end



end
