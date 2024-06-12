class MyClass
  def initialize(name)
    @name = name
  end

  def say_hello
    puts "Hello! #{@name} from MyClass"
  end
end

julian = MyClass.new('Julian')
julian.say_hello

puts 'add a singleton method:'

def julian.say_hello
  puts "Hello! #{@name} from singleton method 'hello'"
end

julian.say_hello

puts 'ancestors:'
print julian.class.ancestors
