defmodule App do
  use Clint

  get "/" do
    conn
    |> text "Hello world!"
  end

  get "/foo" do
    conn
    |> html "<h2>Hello html world!</h2>"
  end

  get "/foo/:name" do
    conn
    |> template :hello, name: name
  end
end

# mix run -e App.start
