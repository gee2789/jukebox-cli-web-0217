songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program-help"
end

def list(songs)
  songs.each_with_index do |song, i|
    #iterates and includes index (i) value.  song is the array values.
    puts "#{i+1}. #{song}"
    #include i+1 since 0 is the first index
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_number_name = gets.chomp
  #gets number from list.  remember, this number is the index +1
  if (1..9).to_a.include?(song_number_name.to_i)
    #sees if person types in 1-9 valid number
    #to_a turns range into an array
    #include? looks in array for matching value
    #to_i converts the input into an integer to compare to range
   puts "Playing #{songs[song_number_name.to_i - 1]}"
   #if true, pull from songs_array[index]
 elsif songs.include?(song_number_name)
   #see if songs array includes name of song (what about capital/downcase?)
   puts "Playing #{song_number_name}"
 else
   puts "Invalid input, please try again"
 end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
help
  until input = "exit"
    puts "Please enter a command:"
    input = gets.downcase.chomp
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    else input == "help"
      help
    end
  end
  exit_jukebox
end

def run(songs)
  # help
  input = ""
  while input
    puts "Please enter a command:"
    input = gets.downcase.strip
    case input
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end
