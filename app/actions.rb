
get '/' do
  erb :index
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end

get '/clinics' do
  @clinics = Clinic.all
  erb :'/clinics/show'
end

get '/clinics/:id' do
  @clinic = Clinic.find(params[:id])
  erb :'/clinics/show'
end


post '/login' do

  #creates session with params and redirects to either users/:id or clinics/:id

end

post '/results' do

  #creates a result row in the database from form params from clinic

end
