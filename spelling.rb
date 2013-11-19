Shoes.app(width: 800, height: 600) do

    @letters = "DOG".upcase.split(//)
    @cur = 0

    flow do
      @banners = (0..@letters.size-1).map do |i|
        banner @letters[i], stroke: i >= @cur ? black : red
      end

      #@foo = para "debug"
      #arrow( :left => 30,
      #      :top => 30,
      #      :width => 40,
      #      :fill => "#FF0",
      #      :stroke => "#F00",
      #      :strokewidth => 3,
      #     )
      background("http://www.hdwallpapersinn.com/wp-content/uploads/2013/09/Cute-Dog6.jpg", width: "100%")
    end

  keypress do |k|
    if k.upcase == @letters[@cur]
      @banners[@cur].replace k.upcase, stroke: red
      @cur += 1
    end
  end
end
