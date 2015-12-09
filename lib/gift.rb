require 'pry'
class Gift

  attr_accessor :length, :width, :height

  def initialize(options={})
    self.length = options[:length] || 20
    self.width = options[:width] || 10
    self.height = options[:height] || 5
  end

  def surface_area
    cuboid_area(length, width, height)
  end

  def smallest_side_area
    sorted_sides[0] * sorted_sides[1]
  end

  def wrapping_paper_area
    surface_area + smallest_side_area
  end

  def shortest_perimeter
    (sorted_sides[0] + sorted_sides[1]) * 2
  end

  def cubic_volume
    length * width * height
  end

  def ribbon_length
    shortest_perimeter + cubic_volume
  end
  private

  def sorted_sides
    [length, width, height].sort
  end

  def cuboid_area(length, width, height)
    (2 * length * width) + (2 * width * height) + (2 * height * length)
  end

end


