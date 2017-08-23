require 'minitest/autorun'
require 'minitest/pride'

require './lib/morse_translator'

class MorseTest < MiniTest::Test

  def test_translate_class_exists
    assert_instance_of Translate, translator = Translate.new("hello world")
  end

  def test_eng_to_morse_outputs_as_morse_symbols
    translator = Translate.new("hello world")

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end

end
