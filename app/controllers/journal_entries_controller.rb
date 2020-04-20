class JournalEntriesController < ApplicationController

  get '/journal_entries/new' do
    erb :'/journal_entries/new'
  end

  post '/journal_entries' do
    raise params.inspect
    if !logged_in
      redirect '/'
    end
    if params[:content] != ""
      @journal_entry = JournalEntry.create(content: params[:content], user_id: current_user.id)
      redirect "/journal_entries/#{@journal_entry.id}"
    else
      redirect '/journal_entries/new'
    end
  end

end
