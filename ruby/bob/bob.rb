class Bob
  def self.hey(remark)
    if remark == nil 
      return "Fine. Be that way!"
    elsif remark == remark.upcase
      return "Whoa, chill out!"
    elsif remark.strip[remark.strip.length - 1] == "?"
      return "Sure."
    else
      return "Whatever."
    end
  end
end
