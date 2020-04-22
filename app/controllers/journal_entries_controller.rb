class JournalEntriesController < ApplicationController

  get '/journal_entries' do
    if !!logged_in?
    @journal_entries = JournalEntry.all
    erb :'journal_entries/index'
  else
    redirect '/'
    end
  end

  get '/journal_entries/new' do
    if !!logged_in?
    erb :'/journal_entries/new'
  else
    redirect '/'
  end
  end

  post '/journal_entries' do
    if !logged_in?
      redirect '/'
    end
    if params[:content] != ""
      flash[:message] = "Entry Saved!"
      @journal_entry = JournalEntry.create(title: params[:title], content: params[:content], user_id: current_user.id)
      redirect "/journal_entries/#{@journal_entry.id}"
    else
      flash[:errors] = "Please enter some text to save a new entry."
      redirect '/journal_entries/new'
    end
  end

  get '/journal_entries/:id' do
    if !!logged_in?
    set_journal_entry
    erb :'/journal_entries/show'
  else redirect '/'
  end
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
      flash[:errors] = "Cannot save edits with no text, please try again."
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
