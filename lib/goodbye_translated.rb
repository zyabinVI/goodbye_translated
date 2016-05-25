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
end
