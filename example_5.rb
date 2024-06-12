class MySuperClass
  def say_hello
    puts "Hello! #{@name} from MySuperClass"
  end
end

module MyModule
  def say_hello
    puts "Hello! #{@name} from MyModule"
  end

  def say_hello
    puts "Hello! #{@name} from second hello in MyModule"
  end
end

class MyClass < MySuperClass
  # include MyModule
  prepend MyModule

  def initialize(name)
    @name = name
  end

  def say_hello
    puts "Hello! #{@name} from MyClass"
  end
end

julian = MyClass.new('Julian')

def julian.say_hello
  puts "Hello! #{@name} from singleton method 'hello'"
end

julian.say_hello

puts 'ancestors:'
print julian.class.ancestors
