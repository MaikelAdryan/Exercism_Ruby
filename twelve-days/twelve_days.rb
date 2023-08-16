class TwelveDays
  def self.song
    song_file = File.expand_path("song.txt", __dir__)
    song = File.read(song_file)
  end
end