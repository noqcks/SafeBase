# Homepage (Root path)
get '/' do
  erb :index
end

get '/login' do
  erb :login
end

<<<<<<< HEAD
get '/user' do
  erb :'/user/index'
end
=======
# get '/users/:id' do
#   @user = User.find(params[:id])
#   redirect 'views/users/show.erb'
# end

# get '/clinics/:id' do
#   @clinic = Clinic.find(params[:id])
#   redirect 'views/clinics/show/erb'
# end

# post '/results' do 
#   @result = Result.new(
#     )
#   if @result.save
#     redirect '/clinics/:id'
#   else
#     erb :'results/new'
# end
>>>>>>> validations
