# Homepage (Root path)
get '/' do
  erb :index
end

get '/login' do
  erb :login
end

get '/user' do
  erb :'/user/index'
end