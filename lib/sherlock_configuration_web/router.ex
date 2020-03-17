defmodule SherlockConfigurationWeb.Router do
  use SherlockConfigurationWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SherlockConfigurationWeb do
    pipe_through :api
  end
end
