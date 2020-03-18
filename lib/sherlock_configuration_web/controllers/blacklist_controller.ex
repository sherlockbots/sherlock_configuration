defmodule SherlockConfigurationWeb.BlacklistController do
  use SherlockConfigurationWeb, :controller

  def get_all_by_settings_id(conn, %{"id" => id} = params) do
    json(conn, %{"message" => :ok, "id" => id})
  end

  def create(conn, params) do
    json(conn, %{"message" => :ok})
  end

  def delete(conn, params) do
    json(conn, %{"message" => :ok})
  end
end
