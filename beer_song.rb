class BeerSong
  def verses(v1, v2)
    output = ''
    v1.downto(v2) do |n|
      output << verse(n)
      output << "\n" unless n == v2
    end
    output
  end

  def verse(num)
    if num == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif num == 1
      "#{num} bottle of beer on the wall, #{num} bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif num == 2
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
      "Take one down and pass it around, #{num - 1} bottle of beer on the wall.\n"
    else
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
      "Take one down and pass it around, #{num - 1} bottles of beer on the wall.\n"
    end
  end

  def lyrics
    verses(99, 0)
  end
end
