require_relative 'helper'
enable :sessions
include Map
 
helpers do 

  def login?
    session[:id].nil? ? false : true
  end
end


get '/' do
  erb :index
end

get '/users/:id' do
  @user = User.find(params[:id])
  @results = @user.results
  erb :'/users/show'
end

get '/clinics' do
  gon.locations = Map.location
  @clinics = Clinic.all
  erb :'/clinics/index'
end

get '/clinics/:id' do
  @clinic = Clinic.find(params[:id])
  erb :'/clinics/show', :layout => false
end

post '/user/login' do
  unless login?
    if User.find_by(email: params[:email])
      @user = User.find_by(email: params[:email])
      if @user[:password] == params[:password]
        session[:id] = @user.id
        redirect "/users/#{@user.id}"
      else
        redirect '/'
      end
    end
  end
  redirect '/'
end

post '/user/healthcare' do
  user = User.find(params[:id])
  user.update(personal_health_number: params[:personal_health_number])
  redirect "/users/#{params[:id]}"
end

post '/clinic/login' do
  unless login?
    if Clinic.find_by(institution_id: params[:institution_id])
      @clinic = Clinic.find_by(institution_id: params[:institution_id])
      if @clinic[:password] == params[:password]
        session[:id] = @clinic.id
        redirect "/clinics/#{@clinic.id}"
      end
    end
  end
  erb :error
end

post '/find' do
  @clinic = Clinic.find(session[:id])
  @user = User.find_by(personal_health_number: params[:personal_health_number])
  erb :"/clinics/show"
end

post '/signup' do
  names = Namae.parse params[:name] 
  name = names[0]
  unless login?
    user = User.create(
      first_name: name.given,
      last_name: name.family,
      email: params[:email],
      password: params[:password]
    )
    if user.save
      redirect "/users/#{user.id}"
    else
      redirect '/'
    end
  end
end
get '/logout' do
  session.clear
  redirect '/'
end

post '/result' do
  user_id = User.find_by(personal_health_number: params[:personal_health_number]).id
  Result.create(
    herpes: params[:herpes],
    chlamydia: params[:chlamydia],
    gonorrhoeae: params[:gonorrhoeae],
    hiv: params[:hiv],
    hepatitis: params[:hepatitis],
    syphilis: params[:syphilis],
    user_id: user_id,
    clinic_id: session[:id]
  )
  redirect "/clinics/#{session[:id]}"
end

