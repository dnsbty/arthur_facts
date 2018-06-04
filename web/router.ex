defmodule ArthurFacts.Router do
  use ArthurFacts.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ArthurFacts do
    pipe_through :api
  end
end