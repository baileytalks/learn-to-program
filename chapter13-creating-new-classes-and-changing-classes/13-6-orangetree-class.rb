## OrangeTree class

class OrangeTree
  def initialize
    @height      = 10
    @age         = 1
    @orangecount = 5
  end

  def height
    puts "This tree is #{@height} tall"
  end

  def one_year_passes
    @age         = @age + 1
    @orangecount = 0
    @orangecount = @age * 5
    if @age <= 20
      puts "The tree is #{@age}"
    end
    if @age >= 20
      puts "The tree has died"
      exit
    end
  end

  def count_the_oranges
    puts "There are #{@orangecount} oranges"
  end

  def pick_an_orange
    @orangecount = @orangecount - 1
    if @orangecount == 0
      puts "No more oranges :("
    end
    if @orangecount != 0
      puts "Mmm, delish orange"
    end
  end
end

tree = OrangeTree.new
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
