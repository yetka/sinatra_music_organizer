require('rspec')
require('artist')

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

  describe("#id") do
    it("increments an id by 1 each time a new artist is added") do
      new_artist1 = Artist.new({:name=> "Riverside", :genre=> "rock"})
      new_artist1.save()
      new_artist2 = Artist.new({:name=> "Queen", :genre=> "rock"})
      new_artist2.save()
      expect(new_artist1.id()).to(eq(1))
      expect(new_artist2.id()).to(eq(2))
    end
  end

  describe(".find") do
    it("finds an new artist based on its id") do
      new_artist1 = Artist.new({:name=> "Riverside", :genre=> "rock"})
      new_artist1.save()
      new_artist2 = Artist.new({:name=> "Queen", :genre=> "rock"})
      new_artist2.save()
      expect(Artist.find(1)).to(eq(new_artist1))
      expect(Artist.find(2)).to(eq(new_artist2))
    end
  end

end
