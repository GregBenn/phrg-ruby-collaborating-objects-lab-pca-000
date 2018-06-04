require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select{ |e| e.include?(".mp3")}
  end

  # binding.pry and check out @path and see what you need to do

  # pseudo code everything you think of that you need to do, and real code what makes sense
  def import
    files.each do |file|
    Song.new_by_filename(file)
    end
  end

end
