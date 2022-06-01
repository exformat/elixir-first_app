defmodule Vector2 do
  @moduledoc """
  Documentation for `Vector2`.
  based math functions for vector2
  """
  def add({vec1, x, y}, {vec2, x1, y1}) do
    result = {:vector, x + x1, y + y1}
  end

  def sub({vec1, x, y}, {vec2, x1, y1}) do
    result = {:vector, x - x1, y - y1}
  end

  def nor({vec1, x, y}) do
    lenght = len({vec1, x, y})

    if lenght != 0 do
      result = {:vector, x / lenght, y / lenght}
    else
      result = {:vector, x, y}
    end
  end

  def len({vec1, x, y}) do
    :math.sqrt(x * x + y * y)
  end

  def scl({vec1, x, y}, scl) do
    result = {:vector, x * scl, y * scl}
  end

  def scl({vec1, x, y}, {vec1, x1, y1}) do
    result = {:vector, x * x1, y * y1}
  end

  def dst({vec1, x, y}, {vec2, x1, y1}) do
    sub_vector = sub({vec2, x1, y1}, {vec1, x, y})
    len(sub_vector)
  end

  def crs({vec1, x, y}, {vec2, x1, y1}) do
    result = x * y1 - y * x1
  end

  def dot({vec1, x, y}, {vec2, x1, y1}) do
    result = x * x1 + y * y1
  end

  def rad({vec1, x, y}) do
    :math.atan2(y, x)
  end

  def rad({vec1, x, y}, {vec2, x1, y1}) do
    a = crs({vec2, x1, y1}, {vec1, x, y})
    b = dot({vec2, x1, y1}, {vec1, x, y})

    :math.atan2(a, b)
  end

  def rotate({vec1, x, y}, radians) do
    cos = :math.cos(radians)
    sin = :math.sin(radians)

    newX = x * cos - y * sin
    newY = x * sin + y * cos

    result = {:vector, newX, newY}
  end

  def rotate_around({vec1, x, y}, {vec2, x1, y1}, radians) do
    sub_vector = sub({vec1, x, y}, {vec2, x1, y1})
    rot_vector = rotate(sub_vector, radians)

    result = add(rot_vector, {vec2, x1, y1})
  end

#hand test functions)))
def start() do
  vec1 = {:vec1, 20, 0}
  vec2 = {:vec2, 10, 10}

  dst(vec1, vec2)
end

end
