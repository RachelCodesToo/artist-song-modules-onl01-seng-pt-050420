require 'pry'

class Artist
  
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
  
  
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def self.all
    @@artists
  end

  def add_songs(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  
end
