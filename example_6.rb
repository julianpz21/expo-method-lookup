module MyModule
  def hello
    puts "Hello! #{@name} from MyModule"
  end
end

class MySuperClass
  def hello
    puts "Hello! #{@name} from MySuperClass"
  end
end

class MyClass < MySuperClass
  extend MyModule

  def initialize(name)
    @name = name
  end

  def hello
    puts "Hello! #{@name} from MyClass"
  end
end

julian = MyClass.new('Julian')
puts 'intance method'
julian.hello

puts 'class method'
MyClass.hello

puts 'ancestors:'
print julian.class.ancestors
