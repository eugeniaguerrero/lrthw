class MyStuff

  def initialize()
    @tangerine = "And now a thousand years between"
  end

  attr_reader :tangerine

  def apple()
    puts "I AM CLASSY APPLES!"
  end

end

thing = MyStuff.new()
thing.apple()
puts thing.tangerine
