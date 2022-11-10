import Enum, only: [map: 2, sum: 1, zip: 2]

calculados = [1, 2, 3, 4]
reales = [0.5, 0.2, 1.7, 5.9]

error =
  calculados
  |> zip(reales)
  |> map(fn {c, r} -> :math.pow(c - r, 2) end)
  |> sum

IO.puts(error)

cadena =
  "hola wilber"
  |> String.upcase()
  |> String.split()

IO.puts(cadena)

current_process = self()

# Spawn an Elixir process (not an operating system one!)
spawn_link(fn ->
  send(current_process, {:msg, "hello world"})
end)

# Block until the message is received
receive do
  {:msg, contents} -> IO.puts(contents)
end

:crypto.hash(:md5, "Using crypto from Erlang OTP")
#process = spawn(fn -> IO.puts("hey there!") end)
IO.puts("--------------------------------------------")
IO.puts("--------------------------------------------")
name="some long name"
unir =name |> String.split |> Enum.join
IO.puts(unir)


IO.puts(File.read("texto.txt") |> Tuple.to_list |> Enum.join(", "))
