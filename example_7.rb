
module MyModule1
  def hello
    puts "Hello! #{@name} from MyModule1"
  end
end

module MyModule2
  def hello
    puts "Hello! #{@name} from MyModule2"
  end
end

class MySuperClass
  def hello
    puts "Hello! #{@name} from MySuperClass"
  end
end

class MyClass < MySuperClass
  include MyModule1
  include MyModule2

  def initialize(name)
    @name = name
  end

  # def hello
  #   puts "Hello! #{@name} from MyClass"
  # end
end

julian = MyClass.new('Julian')
julian.hello

puts 'ancestors:'
print julian.class.ancestors


# puts 'add a singleton method:'

# def julian.hello
#   puts "Hello! #{@name} from singleton method 'hello'"
# end

# julian.hello
