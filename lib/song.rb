class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = Song.create
    song.name = name
    song
  end

  def self.find_by_name(name)
    Song.all.find do |track|
      track.name == name
    end
  end

  def self.find_or_create_by_name
    self.find(name) ? self.find(name) : self.new(name)
  end

  def self.find(name)
    self.all.find do |artist|
      artist.name == name
  end
end

  def self.alphabetical
    self.all.sort_by{|s| s.name}
  end

  # def self.new_from_filename(filename)
  #   parts = filename.split(" - ")
  #   artist = parts[0]
  #   song = parts[1]
  #   substituted = song.gsub(".mp3", "")
  # end

end
