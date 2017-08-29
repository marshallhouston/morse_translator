require 'minitest/autorun'
require 'minitest/pride'

require './lib/morse_translator'

class MorseTest < MiniTest::Test

  def setup
    @translator = Translate.new
  end

  def test_translate_class_exists
    assert_instance_of Translate, @translator
  end

  def test_translate_one_letter_to_morse
    assert_equal "....", @translator.eng_to_morse("h")
  end

  def test_translate_two_letters_to_morse
    assert_equal "......", @translator.eng_to_morse("hi")
  end

  def test_eng_to_morse_outputs_as_morse_symbols=
    assert_equal "......-...-..--- .-----.-..-..-..", @translator.eng_to_morse("hello world")
  end

  def test_eng_to_morse_with_capitals
    expected = "......-...-..--- .-----.-..-..-.."
    actual = @translator.eng_to_morse("Hello World")

    assert_equal expected, actual
  end

  def test_translation_with_numbers_and_letters
    expected = "-......-.. .-.-.. ...-- ..........--...."
    actual = @translator.eng_to_morse("There are 3 ships")

    assert_equal expected, actual
  end
end
