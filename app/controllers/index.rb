get '/' do
  # let user create new short URL, display a list of shortened URLs
  erb :index
end

post '/urls' do
  Url.create(original_url: params[:original_url], 
          shortened_url: URL.shorten)
  redirect to '/'
end

# e.g., /q6bda
get '/:short_url' do
  # redirect to appropriate "long" URL
end
