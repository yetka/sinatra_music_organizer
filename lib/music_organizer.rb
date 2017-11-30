class Artist
  @@list =[]
  attr_accessor :name
  attr_accessor :genre
  attr_accessor :album
  attr_reader :id


  def initialize(attributes)
    @name = attributes.fetch(:name)
    @genre = attributes.fetch(:genre)
    @album = []
    @id = @@list.length + 1
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

  def self.find(id)
    artist_id = id.to_i()
    @@list.each do |artist|
      if artist.id == artist_id
        return artist
      end
    end
  end

end
