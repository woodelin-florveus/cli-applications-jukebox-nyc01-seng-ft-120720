# Add your code here

require "pry"

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
  puts " - help : displays this help message"
  puts " - list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"
end

def list(songs)
songs.each_with_index.map do |names, num|
  puts "#{num + 1}. #{names}"
end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  song_found = false
  songs.each_with_index do |name, num|
    # binding.pry
    if user_response == (num + 1).to_s || user_response == name
      song_found = true
        puts "Playing #{name}"
    end
  end

  if !song_found
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true do

    puts "Please enter a command:"
    user_input = gets.strip

    case user_input
    when "exit"
      exit_jukebox
      break
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    else
      puts "invalid entry"
    end
  end
end
