require 'pry'

class Artist
  
  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
  
  
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def self.all
    @@artists
  end

  def self.add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  
end
