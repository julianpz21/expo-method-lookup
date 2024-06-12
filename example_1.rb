class MyClass
  def initialize(name)
    @name = name
  end

  def say_hello
    puts "Hello, my name is #{@name} from first method"
  end

  # private

  # def say_hello
  #   puts "Hello, my name is #{@name} from second method"
  # end
end

julian = MyClass.new('Julian')
# julian.say_hello
# julian.public_send(:say_hello)
# julian.send(:say_hello)
