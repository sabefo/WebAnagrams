get '/' do
  erb :index
end

get '/:new_word' do
	@new_word = params[:new_word]
	can = Word.canonical("roma")
	@anagrams = Word.where(cannonical: can)
  erb :word
end

post '/new_word' do
  redirect to ("/#{params[:user_word]}")
end

