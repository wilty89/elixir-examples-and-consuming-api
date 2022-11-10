# i response
defmodule HtppApi do
  def hello do
    response = Tesla.get("https://rickandmortyapi.com/api/character/1")
    json = Jason.decode!(response.body)
    IO.puts(json)
  end

  def user_repos(client, login) do

    Tesla.get(client, "/posts" <> login )
  end

  # build dynamic client based on runtime arguments
  def client() do
    middleware = [
      {Tesla.Middleware.BaseUrl, "http://jsonplaceholder.typicode.com"},
      Tesla.Middleware.JSON,
      ]


    Tesla.client(middleware)
  end
end


client = HtppApi.client()
{:ok, response} = client |> HtppApi.user_repos("/2")
respuesta = response.body
respuesta2= respuesta
IO.puts(respuesta2)

#mix deps.get
#mix run
#iex -S mix


#HtppApi.hello()

#elem(result,1)     for tuple
#json |> Enum.at 0
