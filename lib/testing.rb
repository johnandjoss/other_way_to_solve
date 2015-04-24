class String
define_method(:testing) do |word|
x = []
sentence = self.split(" ")
sentence.each() do |chunk|
if chunk == word
x.push(chunk)
else
false
end
end
x.length
end
end
