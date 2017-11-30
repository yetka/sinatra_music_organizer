require('rspec')
require('music_organizer')

describe("Artist") do
  before() do
    Artist.clear()
  end

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

  describe("#save") do
    it("saves new artist to the list") do
      new_artist = Artist.new({:name=> "Riverside", :genre=> "rock"})
      new_artist.save()
      expect(Artist.all()).to(eq([new_artist]))
    end
  end

  describe(".clear") do
    it("clears all artists from the list") do
      new_artist = Artist.new({:name=> "Riverside", :genre=> "rock"})
      new_artist.save()
      Artist.clear()
      expect(Artist.all()).to(eq([]))
    end
  end

end
