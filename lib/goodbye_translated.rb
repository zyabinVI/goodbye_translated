# The main goodbye_translated driver
class GoodbyeTranslated
  # Say goodbye to the world!
  def self.say_goodbye
    return "Goodbye, World!"
  end
  
  # Say goodbye to the world, a person or a list of people.
  def self.say_goodbye_to(people)
    if people.nil?
      return self.say_goodbye
    elsif people.respond_to?("join")
      # Join the list elements with commas
      return "Goodbye, #{people.join(", ")}!"
    else
      return "Goodbye, #{people}!"
    end
  end

  # Say goodbye to the world in a language.
  def self.say_goodbye_in(language)
    translator = Translator.new(language)
    return translator.say_goodbye
  end

  # Say goodbye to some people in a language.
  def self.say_goodbye_to_in(people, language)
    translator = Translator.new(language)
    return translator.say_goodbye_to(people)
  end

  # Say goodbye in a language to some people.
  def self.say_goodbye_in_to(language, people)
    return self.say_goodbye_to_in(people, language)
  end
end

require 'goodbye_translated/translator'
