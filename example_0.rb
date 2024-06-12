puts 'Understanding Ancestor Chains in Ruby'
puts 'Integer:'
pp 1.class.ancestors

puts 'float'
pp 1.1.class.ancestors

puts 'String:'
pp 'hey'.class.ancestors

puts 'hash:'
my_hash = { a: 1 }
pp my_hash.class.ancestors
