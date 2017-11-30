require('rspec')
require('music_organizer')

describe("Artist") do

  describe("#name") do
    it("returns the name of an artist") do
      new_artist = Artist.new({:name=> "Riverside", :genre=> "rock"})
      expect(new_artist.name()).to(eq("Riverside"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Artist.all()).to(eq([]))
    end
  end

end
