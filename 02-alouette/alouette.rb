class Alouette
  @@words = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]
  def initialize
    sing

  end



  def self.lines_for_verse number

    count = number
    verse_lines = []
    until count < 0 do
      verse_lines << "Et #{@@words[count]}!"
      count -= 1
    end
    return verse_lines
  end
  # returns an array of strings
  # generates "Et <part>!" lines for a given verse
  # lines_for_verse(2) generates ["Et les yeux!", "Et le bec!", "Et la tête!"]
  # verse are 0-indexed


  def self.verse number
    verse = ""
    2.times do
      verse += "Je te plumerai #{@@words[number]}.\n"
    end
    middle_lines = Alouette.lines_for_verse (number)
    middle_lines.each do |line|
      2.times do
        verse << "#{line}\n"
      end
    end
    verse += "Alouette!\nAlouette!\nA-a-a-ah"
    return verse
  end

  def self.sing
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
    song = refrain
    8.times do |count|
      song += "\n\n" + Alouette.verse(count) + "\n\n" + refrain
    end
    return song
  end

end
