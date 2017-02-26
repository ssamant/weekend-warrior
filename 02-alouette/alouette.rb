class Alouette
  def initialize
    sing
  end

  def self.lines_for_verse number
    words = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]
    count = number
    verse_lines = []
    until count < 0 do
      verse_lines << "Et #{words[count]}!"
      count -= 1
    end
    return verse_lines
  end
  # returns an array of strings
  # generates "Et <part>!" lines for a given verse
  # lines_for_verse(2) generates ["Et les yeux!", "Et le bec!", "Et la tête!"]
  # verse are 0-indexed


  def self.verse number
    # builds requested verse
    # returns verse
    #
    # verse(2):
    #     Je te plumerai les yeux.
    #     Je te plumerai les yeux.
    #     Et les yeux!
    #     Et les yeux!
    #     Et le bec!
    #     Et le bec!
    #     Et la tête!
    #     Et la tête!
    #     Alouette!
    #     Alouette!
    #     A-a-a-ah

  end

  def self.sing
    # returns a string of the entire song, formatted like the txt file
    #   refrain = "Alouette, gentille alouette, Alouette, je te plumerai."
    #
    #   0..7.each do |number|
    #     print refrain
    #     print verse(number)
    #
  end

end
