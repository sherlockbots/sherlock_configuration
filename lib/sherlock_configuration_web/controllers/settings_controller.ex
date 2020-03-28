defmodule SherlockConfigurationWeb.SettingsController do
  use SherlockConfigurationWeb, :controller
  alias SherlockConfiguration.SettingsRepository

  action_fallback SherlockConfigurationWeb.FallbackController

  def get(conn, %{"id" => id}) do
    settings = SettingsRepository.get!(id)
    render(conn, "show.json", settings)
  end

  def create(conn, params) do
    with {:ok, settings} <- SettingsRepository.create(params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.settings_path(conn, :get, settings))
      |> render("show.json", settings: settings)
    end
  end

  def update(conn, %{"id" => id} = params) do
    IO.puts "++++++++++"
    IO.inspect id
    IO.puts "++++++++++"
    IO.inspect params
    IO.puts "++++++++++"
    json(conn, %{"message" => :ok, "id" => id})
  end

  def filter_message_control(conn, %{"id" => id, "enable" => status} = params)do
    IO.puts "++++++++++"
    IO.inspect id
    IO.puts "++++++++++"
    IO.inspect status
    IO.puts "++++++++++"
    IO.inspect params
    IO.puts "++++++++++"
    json(conn, %{"message" => :ok, "id" => id})
  end

  def filter_code_control(conn, %{"id" => id, "enable" => status} = params)do
    IO.puts "++++++++++"
    IO.inspect id
    IO.puts "++++++++++"
    IO.inspect status
    IO.puts "++++++++++"
    IO.inspect params
    IO.puts "++++++++++"
    json(conn, %{"message" => :ok, "id" => id})
  end

  def filter_doc_control(conn, %{"id" => id, "enable" => status} = params)do
    IO.puts "++++++++++"
    IO.inspect id
    IO.puts "++++++++++"
    IO.inspect status
    IO.puts "++++++++++"
    IO.inspect params
    IO.puts "++++++++++"
    json(conn, %{"message" => :ok, "id" => id})
  end

  def filter_pdf_control(conn, %{"id" => id, "enable" => status} = params)do
    IO.puts "++++++++++"
    IO.inspect id
    IO.puts "++++++++++"
    IO.inspect status
    IO.puts "++++++++++"
    IO.inspect params
    IO.puts "++++++++++"
    json(conn, %{"message" => :ok, "id" => id})
  end

  def filter_image_control(conn, %{"id" => id, "enable" => status} = params)do
    IO.puts "++++++++++"
    IO.inspect id
    IO.puts "++++++++++"
    IO.inspect status
    IO.puts "++++++++++"
    IO.inspect params
    IO.puts "++++++++++"
    json(conn, %{"message" => :ok, "id" => id})
  end
end
