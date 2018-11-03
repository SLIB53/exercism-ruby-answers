module Isogram
  def self.isogram?(phrase)
    !phrase.downcase.scan(/\p{L}\p{M}*+/).uniq!
  end
end
