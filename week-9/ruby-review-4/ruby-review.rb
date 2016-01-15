# Create a Playlist from Driver Code

# I worked on this challenge by myself
# I spent [#] hours on this challenge.


# Pseudocode
# CREATE Class Song
#   initalize method
#   INPUTS - Title, Artist
#   Set as instance variables

# CREATE Playlist Class
#   initialize method
#   INPUTS - variable amount of songs
#   create songs array with all songs
# initialize num of tracks to song_list length

# CREATE Add method inside Playlist Class
#   takes input at least one song
#   adds each song to song_list array
#update num of tracks

# CREATe attribute reader for num_of_tracks
#initialize num_of_tracks as instance variable of length song_list

#create play method for Song class
#puts a songlike string with the title in it

#create a remove method for playlist class
# takes at least one song as argument
# for each song, delete from song_list
#update num of tracks

class Song
  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def play
    puts "#{@title} beep bobbity beep boop #{@title} sha la la"
  end
end

class Playlist
  attr_reader :num_of_tracks
  def initialize(*songs)
    @song_list = []
    songs.each {|song| @song_list << song}
    @num_of_tracks = @song_list.size
  end

  def add(first_song, *other_songs)
    @song_list << first_song
    other_songs.each {|song| @song_list << song}
    @num_of_tracks = @song_list.size
  end

  def remove(first_song, *other_songs)
    @song_list.delete(first_song)
    other_songs.each {|song| @song_list.delete(song)}
    @num_of_tracks = @song_list.size
  end


end



# Refactored Solution






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection