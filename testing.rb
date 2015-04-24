class String
define_method(:testing) do |word|
x = []
sentence = self.split(" ")
sentence.each() do |chunk|
if chunk == word
x.push(chunk)
else
puts chunk
end
end
x
end
end
