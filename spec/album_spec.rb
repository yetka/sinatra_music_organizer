require('rspec')
require('artist')
require('album')

describe("Album") do

  describe("#add_album") do
    it("add album to artist") do
      new_artist = Artist.new({:name=> "Riverside", :genre=> "rock"})
      new_artist.save()
      new_album = Album.new({:title=> "Riverside", :date=> "rock"})
      expect(new_artist.add_album(new_album)).to(eq([new_album]))
    end
  end
end
