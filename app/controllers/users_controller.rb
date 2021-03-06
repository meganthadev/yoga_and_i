class UsersController < ApplicationController

  get '/login' do
    erb :login
  end

  post '/login' do
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      puts session
      flash[:message] = "Namaste, #{@user.name}, and Welcome to Your 'You' Space!"
      redirect "users/#{@user.id}"
    else
      flash[:errors] = "Invalid Credentials. Please sign up or try logging in again."
      redirect '/login'
   end
  end

  get '/signup' do
    erb :signup
  end

  post '/users' do
   if params[:name] != "" && params[:email] != "" && params[:password] != ""
     @user = User.create(params)
     redirect "/users/#{@user.id}"
   else
     #want to put a message here telling user what wrong
     redirect '/signup'
   end
  end

  get '/users/:id' do
    @user = User.find_by(id: params[:id] )
    session[:user_id] = @user.id
    erb :'/users/show'
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

end
