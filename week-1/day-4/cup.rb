class Cup
  def initialize(volume, color, style, material, status, content)
    @volume   = volume
    @color    = color
    @style    = style
    @material = material
    @status   = status
    @content  = "Unknown" if content.empty?
  end

  def get_content()
    content if status
  end
  
  
end
