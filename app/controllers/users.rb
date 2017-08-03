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

end

get '/users/:id' do 
	@user = User.find(params[:id])

	erb :"/users/show"
end
