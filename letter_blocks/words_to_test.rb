require 'minitest/autorun'

require 'minitest/reporters'

Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)

require_relative 'blocks'

class WordsToTes < Minitest::Test


  can_make_word("A")
  # => true
  can_make_word("BARK")
  # => true
  can_make_word("BOOK")
  # => false
  can_make_word("TREAT")
  # => true
  can_make_word("COMMON")
  # => false
  can_make_word("SQUAD")
  # => true
  can_make_word("CONFUSE")
  # => true
  can_make_word("BOUGHT")
  # => false
