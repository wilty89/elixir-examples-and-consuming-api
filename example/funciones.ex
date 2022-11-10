defmodule MyFunctions do
  def greet_me do
    "Hello there!"
  end

  def greet_me(name) do
    "Hello #{name}"
  end
end

IO.puts(MyFunctions.greet_me("wilber"))

(3 * 4) |> IO.puts()

defmodule M do
  def main do
    do_stuff()
  end

  def do_stuff do
    age =16
    IO.puts("5 + 4 = #{5 + 4}")
    IO.puts("5 - 4 = #{5 - 4}")
    IO.puts("5 * 4 = #{5 * 4}")
    IO.puts("5 /4 = #{5 / 4}")
    IO.puts("5 div 4 = #{div(5, 4)}")
    IO.puts("5 rem 4 = #{rem(5, 4)}")
    IO.puts("Vote & Drive : #{age >= 16 and age >= 18}")
    IO.puts("Vote or Drive : #{age > 16 or age >= 18}")
    IO.puts("4 == 4.0 : #{4 == 4.0}")
    IO.puts("4 === 4.0 : #{4 === 4.0}")
    IO.puts("4 != 4.0 #{4 != 4.0}")
    IO.puts("4 !== 4.0 : #{4 !== 4.0}")
  end
end

M.main()


#


defmodule BasicStrings do
  def type(v)
      when is_binary(v) do
    IO.write("got a unicode string (binary): ")
    IO.inspect(v)
  end

  def type(v)
      when is_list(v) do
    IO.write("got a list of chars (basic string): ")
    IO.inspect(v)
  end

  def compare_basic_and_binary(a, b) do
    IO.write("a unicode string equals a basic string?: ")
    IO.puts(a == b)
  end

  def interpolate(s) do
    IO.puts("Strings can #{s} values in a ruby way")
  end

  def type2(v)
      when is_function(v) do
    IO.write("function: ")
    IO.inspect(v)
  end
end

BasicStrings.type("this is a unicode string")
BasicStrings.type('this is a basic string (list of chars)')
BasicStrings.compare_basic_and_binary("a", 'a')
BasicStrings.interpolate("interpolate")

BasicStrings.type2(fn a -> a end)

####################################

defmodule Drop do
  def fall_velocity(distance, :earth) when distance > 0 do
    :math.sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(distance, :moon) when distance > 0 do
    :math.sqrt(2 * 1.6 * distance)
  end

  def fall_velocity(distance, :mars) when distance > 0 do
    :math.sqrt(2 * 3.71 * distance)
  end
end

defmodule Convert do
  def mps_to_kph(mps), do: 3.6 * mps
end

defmodule Run do
  def start do
    IO.gets("The hieght that you fall? \n")
    |> String.trim_trailing()
    |> String.to_integer()
    |> Drop.fall_velocity(:earth)
    |> Convert.mps_to_kph()
    |> IO.puts()
  end
end

Run.start()
