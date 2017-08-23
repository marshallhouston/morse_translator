
class Translate
attr_reader :words_to_translate

  def initialize(words_to_translate)
    @words_to_translate = words_to_translate
  end

  def letters_to_morse_symbols
    letters_to_morse_symbols = Hash.new(0)
    letters_to_morse_symbols = {
    	"a" => ".-",
    	"b" => "-...",
    	"c" => "-.-.",
    	"d" => "-..",
    	"e" => ".",
    	"f" => "..-.",
    	"g" => "--.",
    	"h" => "....",
    	"i" => "..",
    	"j" => ".---",
    	"k" => "-.-",
    	"l" => ".-..",
    	"m" => "--",
    	"n" => "-.",
    	"o" => "---",
    	"p" => ".--.",
    	"q" => "--.-",
    	"r" => ".-.",
    	"s" => "...",
    	"t" => "-",
    	"u" => "..-",
    	"v" => "...-",
    	"w" => ".--",
    	"x" => "-..-",
    	"y" => "-.--",
    	"z" => "--..",
    	" " => " "
      }

  end

  def eng_to_morse(words)
    array_of_individual_characters = words.scan /\w/
    
    letters_to_morse_symbols.fetch_values(array_of_individual_characters) #return the value for each element in the array
  end

end
