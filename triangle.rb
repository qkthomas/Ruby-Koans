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
def triangle(a, b, c)
  # WRITE THIS CODE
  args = [a, b, c].sort
  raise(TriangleError, "Not a triangle!") if args[0] + args[1] <= args[2]
  hash = Hash.new(0)
  args.each do |key|
    raise(TriangleError, "Not a triangle!") if key <= 0
    hash[key] += 1
  end
  max = 0
  hash.each {|key, value| max = value if value > max}
  retvals = [:scalene, :isosceles, :equilateral]
  return retvals[max-1]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
