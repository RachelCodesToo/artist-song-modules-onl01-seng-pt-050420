require 'pry'

class Artist
  
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
  
  
  attr_accessor :name
  attr_reader :songs

  @@artists = []
  
  def initialize
    super
    @songs = []
  end 

  def self.all
    @@artists
  end

  def add_songs(song)
    @songs << song    
    song.artist = self
    binding.pry
  end

  def add_song(songs)
    songs.each { |song| add_song(song) }
  end

  
end
