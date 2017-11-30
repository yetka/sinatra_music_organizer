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

end
