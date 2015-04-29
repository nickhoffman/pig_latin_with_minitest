require 'minitest/autorun'
require File.dirname(File.expand_path(__FILE__)) + '/../lib/pig_latin'

class PigLatinTest < Minitest::Test
  def pig_latin
    @pig_latin ||= PigLatin.new
  end

  def english_text
    @english_text ||= 'hello'
  end

  def pig_latin_text
    @pig_latin_text ||= 'ellohay'
  end

  def test_encode_handles_words_beginning_with_one_consonant
    assert_equal 'ellohay', pig_latin.encode('hello')
  end
end
