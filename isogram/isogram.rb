module Isogram
  def self.isogram?(str)
    !str.scan(/\p{L}/).map(&:downcase).uniq!
  end
end
