require 'minitest/autorun'
require 'goodbye_translated'

class GoodbyeTranslatedTest < MiniTest::Unit::TestCase
  def test_say_goodbye
    assert_equal "Goodbye, World!",
      GoodbyeTranslated.say_goodbye
  end

  def test_say_goodbye_to
    assert_equal "Goodbye, World!",
      GoodbyeTranslated.say_goodbye_to(nil)
    assert_equal "Goodbye, A, B!",
      GoodbyeTranslated.say_goodbye_to(["A", "B"])
    assert_equal "Goodbye, A!",
      GoodbyeTranslated.say_goodbye_to("A")
  end

  def test_say_goodbye_in
    assert_equal "Goodbye, World!",
      GoodbyeTranslated.say_goodbye_in("english")
    assert_equal "Adios, Mundo!",
      GoodbyeTranslated.say_goodbye_in("spanish")
    assert_equal "Goodbye, World!",
      GoodbyeTranslated.say_goodbye_in("ruby")
  end

  def test_say_goodbye_to_in
    assert_equal "Goodbye, World!",
      GoodbyeTranslated.say_goodbye_to_in(nil, "english")
    assert_equal "Goodbye, A, B!",
      GoodbyeTranslated.say_goodbye_to_in(["A", "B"], "english")
    assert_equal "Goodbye, A!",
      GoodbyeTranslated.say_goodbye_to_in("A", "english")
    assert_equal "Adios, Mundo!",
      GoodbyeTranslated.say_goodbye_to_in(nil, "spanish")
    assert_equal "Adios, A, B!",
      GoodbyeTranslated.say_goodbye_to_in(["A", "B"], "spanish")
    assert_equal "Adios, A!",
      GoodbyeTranslated.say_goodbye_to_in("A", "spanish")
    assert_equal "Goodbye, World!",
      GoodbyeTranslated.say_goodbye_to_in(nil, "ruby")
    assert_equal "Goodbye, A, B!",
      GoodbyeTranslated.say_goodbye_to_in(["A", "B"], "ruby")
    assert_equal "Goodbye, A!",
      GoodbyeTranslated.say_goodbye_to_in("A", "ruby")
  end

  def test_say_goodbye_in_to
    assert_equal "Goodbye, World!",
      GoodbyeTranslated.say_goodbye_in_to("english", nil)
    assert_equal "Goodbye, A, B!",
      GoodbyeTranslated.say_goodbye_in_to("english", ["A", "B"])
    assert_equal "Goodbye, A!",
      GoodbyeTranslated.say_goodbye_in_to("english", "A")
    assert_equal "Adios, Mundo!",
      GoodbyeTranslated.say_goodbye_in_to("spanish", nil)
    assert_equal "Adios, A, B!",
      GoodbyeTranslated.say_goodbye_in_to("spanish", ["A", "B"])
    assert_equal "Adios, A!",
      GoodbyeTranslated.say_goodbye_in_to("spanish", "A")
    assert_equal "Goodbye, World!",
      GoodbyeTranslated.say_goodbye_in_to("ruby", nil)
    assert_equal "Goodbye, A, B!",
      GoodbyeTranslated.say_goodbye_in_to("ruby", ["A", "B"])
    assert_equal "Goodbye, A!",
      GoodbyeTranslated.say_goodbye_in_to("ruby", "A")
  end
end
