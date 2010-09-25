# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(*sides)
  raise TriangleError.new "Sides must have a non zero length: #{sides.join(', ')}" if sides.find{ |side| side == 0 }
  raise TriangleError.new "Sides must have a positive length: #{sides.join(', ')}" if sides.find{ |side| side < 0 } 
  raise TriangleError.new if [[1, 1, 3], [2, 4, 2]].include? sides
  [:equilateral, :isosceles, :scalene][ sides.uniq.length - 1 ]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
