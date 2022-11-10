#string
x = 3
IO.puts("x = #{x}")
IO.puts("hello\nworld\nhello\nyou")
IO.puts(String.length("hello world"))
IO.puts(is_list('Hello'))
IO.puts(is_binary(to_string('hełło')))
IO.puts([104, 101, 108, 108, 111])
IO.puts(Path.join("foo", "bar"))

IO.puts(0b0110)
IO.puts(0x1F)
graphemes=String.graphemes("Naive")
IO.puts(graphemes)

# Booleans
IO.puts(is_atom(true))
IO.puts(is_boolean(true))
IO.puts(2 + 3 == 5)
# Lists
list = [1, 2, 3]
IO.puts(hd(list))
IO.puts(tl(list))
# Numbers
IO.puts(div(10, 2))
IO.puts(rem(10, 3))

# Tuples
#tuple = {:ok, "hello"}
#elem(tuple, 1)
#tuple_size(tuple)

IO.puts(trunc(3.58))
IO.puts(round(3.58))
#atomos o simbolos
IO.puts(:cat)

# Time
# https://elixirschool.com/en/lessons/basics/date_time
IO.puts(Time.utc_now())

t = ~T[19:39:31.056226]
IO.puts(t.hour)
p = Date.utc_today()
IO.puts(Date.utc_today())
IO.puts(p.day)
IO.puts(NaiveDateTime.utc_now())
DateTime.from_naive(~N[2016-05-24 13:26:08.003], "Etc/UTC")



###
hd = hd([3.14, :pie, "apple"])
# tlq= tl [3.14, :pie, "apple"]
IO.puts(hd)
# IO.puts(tlq)


# división entera => devuelve sólo la parte entera
# del resultado de división
div(6, 7) # 0
# Módulo => restante de la división entera
# restante(a,b) = a - (b * div(a, b))
rem(10, 3) # 1
