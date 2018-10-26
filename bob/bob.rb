module Bob
  def self.hey(remark)
    map_response(remark.strip)
  end

  private

  def self.map_response(sremark)
    if silence?(sremark)
      'Fine. Be that way!'
    elsif shout?(sremark)
      if question?(sremark)
        "Calm down, I know what I'm doing!"
      else
        'Whoa, chill out!'
      end
    elsif question?(sremark)
      'Sure.'
    else
      'Whatever.'
      end
  end

  def self.silence?(sremark)
    sremark.empty?
  end

  def self.shout?(sremark)
    sremark.eql?(sremark.upcase) && !(sremark.eql? sremark.downcase)
  end

  def self.question?(sremark)
    sremark.end_with?('?')
  end
end
