get '/' do 
	erb :'/'
end

post '/events' do 
  @meow = Event.new(params[:meow])
  @motion_detection = Event.new(params[:motion_detection])
if request.xhr?
  erb :_meow_count, layout: false
else
  erb :"/home"
end
end