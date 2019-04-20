class Song
  attr_accessor :name, :artist
  def initialize(name)
    #initialize with #name accepts a name for the Song
    @name = name
  end
  def name=(song_name) # setter
    # sets the song name
    @name = song_name
  end
  def artist=(song_artist) # setter
    # sets the artist object to belong to the song
    @artist = song_artist
  end
  def artist_name=(name) # this method collaborates the Artist
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  def self.new_by_filename(file_name)
      #creates new instance of a song from the file that's passed
      #associates new song instance with the artist from the filenames
      artist_name = file_name.split(" - ")[0]
      song_name = file_name.split(" - ")[1]
      song = Song.new(song_name)
      song.artist_name = @artist_name
  end
end
