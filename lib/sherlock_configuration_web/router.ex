defmodule SherlockConfigurationWeb.Router do
  use SherlockConfigurationWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SherlockConfigurationWeb do
    pipe_through :api

    # settings

    get "/:id", SettingsController, :get

    post "/", SettingsController, :create

    put "/:id", SettingsController, :update

    patch "/:id/message_filter", SettingsController, :filter_message_control
    patch "/:id/code_filter", SettingsController, :filter_code_control
    patch "/:id/doc_filter", SettingsController, :filter_doc_control
    patch "/:id/pdf_filter", SettingsController, :filter_pdf_control
    patch "/:id/image_filter", SettingsController, :filter_image_control

    # blacklist
    get "/:id/blacklist", BlacklistController, :get_all_by_settings_id

    post "/:id/blacklist", BlacklistController, :create
    delete "/blacklist/:id", BlacklistController, :delete

    # account
    get "/:id/account", AccountController, :get_all_by_settings_id

    post "/:id/account", AccountController, :create
    delete "/account/:id", AccountController, :delete
  end
end
