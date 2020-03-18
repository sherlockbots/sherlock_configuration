defmodule SherlockConfigurationWeb.SettingsController do
  use SherlockConfigurationWeb, :controller

  def get(conn, %{"id" => id} = params) do
    json(conn, %{"message" => :ok, "id" => id})
  end

  def create(conn, params) do
    json(conn, %{"message" => :ok})
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
