# passing_block.rb

def take_block(&block)
  block.call
end

take_block do 
  puts "Block being called in the method."
end

take_block { puts "Block being called in method again." }

def take_block_again(number, &block)
  block.call(number)
end

number = 42
take_block_again(number) do |num|
  puts "Block being called in the method #{num}"
end


