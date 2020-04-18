class UsersController < ApplicationController

  get '/login' do
    erb :login
  end

  post '/login' do
    @user = User.find_by(email: params[:email])
    if @user.authenticate(password: params[:password])
      @session = 
    else
      "Invalid Password"
  end

  get '/signup' do
  end

end
