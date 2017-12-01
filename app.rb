require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/artist')
require('./lib/album')
require('pry')

get('/') do
  @list = Artist.all()
  erb(:list)
end

post('/output') do
  name = params["name"]
  genre = params["genre"]

  artist = Artist.new({:name=> name, :genre=> genre})
  artist.save()
  @list = Artist.all()
  erb(:list)
end

get('/artist/:id') do
  @artist = Artist.find(params[:id])
  erb(:artist)
end

post('/artist/:id') do
  @list = Artist.all()
  @artist = Artist.find(params[:id])
  title = params["title"]
  date = params["date"]
  album = Album.new({:title=> title, :date=> date})
  @artist.add_album(album)
  erb(:list)
end

get ('/list') do
  @list = Artist.all()
  erb(:list)
end
