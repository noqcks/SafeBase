
enable :sessions

helpers do
  
  def login?
    if session[:id].nil?
      return false
    else
      return true
    end
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
  @clinics = Clinic.all
  erb :'/clinics/index'
end

get '/clinics/:id' do
  @clinic = Clinic.find(params[:id])
  erb :'/clinics/show'
end

post '/userlogin' do
  unless login?
    if User.find_by(email: params[:email])
      @user = User.find_by(email: params[:email])
      if @user[:password] == params[:password]
        session[:id] = @user.id
        redirect "/users/#{user.id}"
      end
    end
  end
  erb :error
end

post '/cliniclogin' do
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

post '/signup' do
  unless login?
  user = User.create(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    password: params[:password],
    personal_health_number: params[:personal_health_number]
    )
  redirect "/users/#{user.id}"
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
