class JournalEntriesController < ApplicationController

  get '/journal_entries/new' do
    erb :'/journal_entries/new'
  end

  post '/journal_entries'
    #new journal entry
  end

  get '/show' do
    erb :journal_entries/show
  end

  get '/all_entries' do
    #index route for all entries
  end



end
