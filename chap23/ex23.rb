#gemoji
# adds new emoji characters to the Emoji.all list:
emoji = Emoji.create("music") do |char| 
  char.add_alias "song"
  char.add_unicode_alias "\u{266b}" #\u is a unicode escape
  char.add_tag "notes"
end

emoji.name #=> "music"
emoji.raw  #=> "♫"
emoji.image_filename #=> "unicode/266b.png"

# Creating custom emoji (no Unicode aliases):
emoji = Emoji.create("music") do |char|
  char.add_tag "notes"
end

emoji.custom? #=> true
emoji.image_filename #=> "music.png"

#customises image_filename
emoji = Emoji.create("music") do |char|
  char.image_filename = "subdirectory/my_emoji.gif"
end

#Edits the lists of aliases or adds new tags in an edit block (for existing emojis)
moji = Emoji.find_by_alias "musical_note"

Emoji.edit_emoji(emoji) do |char|
  char.add_alias "music"
  char.add_unicode_alias "\u{266b}"
  char.add_tag "notes"
end

Emoji.find_by_alias "music"       #=> emoji
Emoji.find_by_unicode "\u{266b}"  #=> emoji
