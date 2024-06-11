module MyModule
  def hello
    puts "Hello! #{@name} from MyModule"
  end
end

class MySuperClass
  # include MyModule
  prepend MyModule

  def hello
    puts "Hello! #{@name} from MySuperClass"
  end
end

class MyClass < MySuperClass
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
