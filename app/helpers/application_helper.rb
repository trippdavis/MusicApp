module ApplicationHelper
  def ugly_lyrics(lyrics)
    lines = lyrics.split("\n")
    lines.map! { |line| "♫" + line }
    lines.join("\n")
  end
end
