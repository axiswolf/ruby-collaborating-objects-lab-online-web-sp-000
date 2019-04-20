class MP3Importer
  #initialize accepts a :file, :path to parse mp3 files from
  attr_reader :path, :file
  def initialize(path)
    @path = path
    @files = Dir.entries(path).grep(/.*\.mp3/)
  end
  def files
    #files load all the mp3 files in the path directory
    #files normalizes the filename to just the mp3 file name with no path
  end
  def import(list_of_filenames)
  #imports the files into the library by creating songs from a filename
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end
