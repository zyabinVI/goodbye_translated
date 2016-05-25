class GoodbyeTranslated
  def self.say_goodbye
    return "Goodbye, World!"
  end
  
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

  def self.say_goodbye_in(language)
    translator = Translator.new(language)
    return translator.say_goodbye
  end

  def self.say_goodbye_to_in(people, language)
    translator = Translator.new(language)
    return translator.say_goodbye_to(people)
  end

  def self.say_goodbye_in_to(language, people)
    return self.say_goodbye_to_in(people, language)
  end
end

class GoodbyeTranslated::Translator
  def initialize(language)
    @language = language
  end

  def say_goodbye
    case @language
      when "spanish"
        return "Adios, Mundo!"
      else # Assume english
        return "Goodbye, World!"
    end
  end

  def say_goodbye_to(people)
    case @language
      when "spanish"
        if people.nil?
          return say_goodbye
        elsif people.respond_to?("join")
          # Join the list elements with commas
          return "Adios, #{people.join(", ")}!"
        else
          return "Adios, #{people}!"
        end
      else
        if people.nil?
          return say_goodbye
        elsif people.respond_to?("join")
          return "Goodbye, #{people.join(", ")}!"
        else
          return "Goodbye, #{people}!"
        end
    end
  end
end
