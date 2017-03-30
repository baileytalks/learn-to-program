## Interactive baby dragon

class Dragon
  def initialize name
    @name               = name
    @asleep             = false
    @stuff_in_belly     = 10 #full
    @stuff_in_intestine = 0  #doesn't need to go

    puts "Hazzah! #{@name.capitalize} is born"
  end

  def feed
    puts "You feed #{@name.capitalize}"
    @stuff_in_belly     = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name.capitalize}"
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name.capitalize} to bed"
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name.capitalize} snores, filling the room with smoke"
      end
    end
      if @asleep
        @asleep = false
        puts "#{@name.capitalize} wakes up slowly"
      end
    end

    def toss
      puts "You toss #{@name.capitalize} up into the air"
      puts "She giggles, which singes your eyebrows"
      passage_of_time
    end

    def rock
      puts "You rock #{@name.capitalize} gently"
      @asleep = true
      puts "She briefly dozes off"
      passage_of_time
      if @asleep
        @asleep = false
        puts "...but wakes when you stop"
      end
    end

    private ## methods internal to the object

    def hungry? ## a ? means answer is true or false
      @stuff_in_belly <= 2
    end

    def poopy?
      @stuff_in_intestine >= 8
    end

    def passage_of_time
      if @stuff_in_belly > 0
        # move food from belly to intestine
        @stuff_in_belly     = @stuff_in_belly - 1
        @stuff_in_intestine = @stuff_in_intestine + 1
      else #dragon is starving
        if @asleep
          @asleep = false
          puts "She wakes up suddenly!"
        end
        puts "#{@name.capitalize} is starving. In desperation, she ate YOU!"
        exit
      end

      if @stuff_in_intestine >= 10
        @stuff_in_intestine = 0
        puts "Whoops! #{@name.capitalize} had a messy accident..."
      end

      if hungry?
        if @asleep
          @asleep = false
          puts "She wakes up suddenly!"
        end
        puts "#{@name.capitalize}'s stomach grumbles..."
      end

      if poopy?
        if @asleep
          @asleep = false
          puts "She wakes up suddenly!"
        end
        puts "#{@name.capitalize} does the potty dance..."
      end

  end
end

pet = Dragon.new 'Beany'

while true
puts 'what do you want to do?
      =>
      feed
      walk
      toss
      rock
      put_to_bed
      exit'
response = gets.chomp

  if response == 'feed'
    pet.feed
  elsif response == 'walk'
    pet.walk
  elsif response == 'toss'
    pet.toss
  elsif response == 'rock'
    pet.rock
  elsif response == 'put_to_bed'
    pet.put_to_bed
  elsif response == 'exit'
    exit
  else
    puts 'say wha?'
  end
end
