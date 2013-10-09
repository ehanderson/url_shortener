get '/' do
  # let user create new short URL, display a list of shortened URLs
  erb :index
end

post '/urls' do
  Url.create(original_url: params[:original_url], 
          shortened_url: Url.shorten)
  redirect to '/'
end


get '/:short_url' do
  
end
