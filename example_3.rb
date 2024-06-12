class MySuperClass
  def say_hello
    puts "Hello! #{@name} from MySuperClass"
  end

  # def say_hello
  #   puts "Hello! #{@name} from second hello in MySuperClass"
  # end
end

class MyClass < MySuperClass
  def initialize(name)
    @name = name
  end

  def say_hello
    super
    # puts "Hello! #{@name} from MyClass"
  end
end

julian = MyClass.new('Julian')
julian.say_hello

puts 'ancestors:'
print julian.class.ancestors
