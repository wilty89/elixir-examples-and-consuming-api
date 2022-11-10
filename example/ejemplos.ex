# elixir helloworld.ex
# mix new proyecto_elixir
#mix help
#iex -S mix
#mix deps.get
defmodule Hello do
  def sample do
    IO.puts("ice ventura")
  end
end

Hello.sample()

# Anonymous function
sumit = fn a, b -> a + b end
IO.puts(sumit.(2, 3))
# elixir if else
  x = 3
if x < 2 do
  IO.puts(" x greater than 2")
else
  IO.puts("This will")
end

if true, do: :ok, else: :error

# cond example
x = 3

cond do
  x == 1 -> IO.puts("It's 1!")
  x == 2 -> IO.puts("It's 2!")
  x == 3 -> IO.puts("It's 3!")
  true -> IO.puts("I surrender.")
end

# Try catch example
try do
  throw(:hello)
catch
  message -> IO.puts("Received #{message}.")
end

try do
  throw(:hello)
catch
  message -> "Received #{message}."
after
  IO.puts("I'm the after clause.")
end

divisaCambio = fn a, b -> a * b end
divisaPesos = 54
divisaDolares = 10
IO.puts(divisaCambio.(divisaDolares, divisaPesos))

divisaCambio1 = fn a, b -> a / b end
divisaPesos1 = 5000
divisaDolares1 = 54
IO.puts(divisaCambio1.(divisaPesos1, divisaDolares1))

curso = "Elixir"
titulo = "Curso de " <> curso <> "."
IO.puts(titulo)


IO.puts(is_number(13))
IO.puts(is_boolean(true))
sum = fn (a, b) -> a + b end


IO.puts(sum.(1, 5))
IO.puts(is_function(sum))

double = fn a -> sum.(a, a) end
IO.puts(double.(5))
IO.puts("--------------------------------------------")
IO.puts("--------------------------------------------")
map = %{:a => 1, 2 => :b}
IO.puts(map[:a])
IO.puts(map[2])
map = %{:a => 1, 2 => :b}
IO.puts(map.a)


defmodule Math do
  def sumar(a, b) do
     a + b
  end
end
IO.puts(Math.sumar(1, 2))


IO.puts("--------------------------------------------")
IO.puts("--------------------------------------------")
IO.puts(Enum.to_list(?A..?Z))
IO.puts(Enum.random(?A..?Z))

#anonymous functions without arguments
my_func2 = fn -> IO.puts "elixir bueno" end
my_func2.()


defmodule Math2 do
  # one way
  def add(a, b) do
    a + b
  end

  # another way
  def subtract(a, b), do: a - b
end

IO.puts(Math2.subtract(2, 3))
