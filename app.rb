require('sinatra')
require('sinatra/reloader')
require('./lib/testing')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end


get('/form') do
  @User_word = params.fetch('user_word')
  @User_sentence = params.fetch('user_sentence')
  @Count = @User_sentence.testing(@User_word)
  erb(:endpage)
end
