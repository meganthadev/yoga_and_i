class JournalEntriesController < ApplicationController

  get '/journal_entries/new' do
    erb :'/journal_entries/new'
  end

  post '/journal_entries' do
    #new journal entry
  end

end 
