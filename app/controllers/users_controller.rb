class UsersController < ApplicationController

  get '/login' do
    erb :login
  end

  post '/login' do
    @user = User.find_by(email: params[:email])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      puts session
      redirect "users/#{@user.id}"
    else
      "Invalid Password"
   end
  end

  get '/signup' do
    erb :signup
  end

  post '/users' do
   binding.pry
  end

  get '/users/:id' do
    "This will be user show route"
  end

end
