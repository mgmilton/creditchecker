

BRAILLE_DICTIONARY ={
                "a"=> "0.....",
                 "b"=>"0.0...",
                 "c"=>"00....",
                 "d"=>"00.0..",
                 "e"=>"0..0..",
                 "f"=>"000...",
                 "g"=>"0000..",
                 "h"=>"0.00..",
                 "i"=>".00...",
                 "j"=>".000..",
                 "k"=>"0...0.",
                 "l"=>"0.0.0.",
                 "m"=>"00..0.",
                 "n"=>"00.00.",
                 "o"=>"0..00.",
                 "p"=>"000.0.",
                 "q"=> "00000.",
                 "r"=>"0.000.",
                 "s"=>".00.0.",
                 "t"=>".0000.",
                 "u"=>"0...00",
                 "v"=>"0.0.00",
                 "w"=>".000.0",
                 "x"=>"00..00",
                 "y"=>"00.000",
                 "z"=>"0..000",
                 " "=>"......",
                 "CapitalizeNextWord "=>".....0",
                 "#"=>".0.000",
                 "."=>"..00.0"}

# p BRAILLE_DICTIONARY["d"]


def char_array(character)
  string = BRAILLE_DICTIONARY[character]
  z = string.scan(/.{2}/)
  braille_top = []
  braille_bottom = []
  braille_middle = []
  z.each_with_index do |x, i|
    if i == 0
      braille_top << x
    elsif i == 1
      braille_middle << x
    elsif i == 2
      braille_bottom << x
    end
  end
  p braille_top.join()
  p braille_middle.join()
  p braille_bottom.join()
end

def string_splitter(letters)
  let_array = letters.split("")
  braille_array = []
  let_array.each do |x|
    braille_array << BRAILLE_DICTIONARY[x]
  end
  ice_cream = braille_array.join("")
  z =  ice_cream.scan(/.{2}/)
end

string_splitter("abd")

def ellens_method(z)
  braille_top = []
  braille_middle = []
  braille_bottom = []
  z.each_with_index do |x, i|
    if i % 3 == 0
      braille_top << x
    elsif (i-1) % 3 == 0
      braille_middle << x
    elsif (i+1) % 3 == 0
      braille_bottom << x
    end
  end
  require 'pry';binding.pry
end

ellens_method(string_splitter("abd"))

def print

end
