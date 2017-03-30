## Build your own playlist

## (1) Define shuffle method, from Chapter 10
def shuffle(array)
  ## record the length of the array
  x = array.length
  ## create a second array
  changedarray = []
  ## define a new variable to count through the items
  y = 0
  ## go through the array X times and insert
  ## the number of the item and the array item
  ## into the new second array
  ## then loop by adding 1 to 'y'cs
  x.times do
    changedarray.insert(y, array[y])
    y += 1
  end
  ## create a new array for the shuffled array
  shuffled = []
  ## while the length of the array isn't zero
  while x > 0
    ## make 'y' a random number within the number of
    ## items in the array
    y = rand(x)
    ## push a slice of the changedarray item (not
    ## the number) into the new 'shuffled' array
    shuffled.push changedarray.slice!(y)
    ## keep looping by taking one from the length
    ## every time
    x -= 1
  end
  return shuffled
end

## (2) Build a shuffled playlist
track_pool = Dir['/Users/baileykursar/Documents/Songs/*.mp3']
shuffled_tracks = shuffle(track_pool)

puts "\nWhat would you like to call this playlist?"
playlist_name = gets.chomp

l = track_pool.length

print "\nBuilding a playlist from #{l} files: "

playlist = File.open("#{playlist_name}.m3u", "w")

l.times do |integer|
  playlist.write("#{shuffled_tracks[integer]}\n")
end

playlist.close
