class Color
  attr_reader :r, :g, :b

  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    (299 * @r.to_i + 587 * @g.to_i + 114 * @b.to_i) / 1000
  end

  def brightness_difference(another_color)
    (brightness_index - another_color.brightness_index).abs
  end

  def hue_difference(another_color)
    (@r.to_i - another_color.r).abs + (@g.to_i - another_color.g).abs + (@b.to_i - another_color.b).abs
  end

  def enough_contrast?(another_color)
    brightness_difference(another_color) > 125 and hue_difference(another_color) > 500
  end
end
