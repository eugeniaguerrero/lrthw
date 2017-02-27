def top_songs()
  @lyrics.each {|line| puts line }
  end
end

pocketful_of_sunshine = Song.new(["I got a pocket, got a pocketful of sunshine.",
  "I got a love, and I know that it's all mine.",
  "Oh, oh whoa."])

pocketful_of_sunshine.top_songs()
