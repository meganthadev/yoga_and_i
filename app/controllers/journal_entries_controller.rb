class JournalEntriesController < ApplicationController

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
    erb :'/journal_entries/edit'
  end

  patch '/journal_entries/:id' do
    set_journal_entry
    @journal_entry.update(content: params[:content] )
    redirect "/journal_entries/#{@journal_entry.id}"
  end

 private

 def set_journal_entry
   @journal_entry = JournalEntry.find(params[:id] )
 end



end
