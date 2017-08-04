get '/users' do
	@user = User.all
	erb :"/home"
end

get '/users/new' do 
	@user = User.all
	if request.xhr?
		erb :"/", layout: false
	else
		erb :"/users/new"
	end
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "/"
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/:id' do 
	@user = User.find(params[:id])
  authenticate!
	erb :"/users/show"
end
