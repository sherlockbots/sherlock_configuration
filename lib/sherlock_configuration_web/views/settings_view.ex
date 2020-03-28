defmodule SherlockConfigurationWeb.SettingsView do
  use SherlockConfigurationWeb, :view
  alias SherlockConfigurationWeb.SettingsView


  def render("show.json", %{settings: settings}) do
    %{data: render_one(settings, SettingsView, "settings.json")}
  end

  def render("settings.json", %{settings: settings}) do
    %{
      id: settings.id,
      message_filter: settings.message_filter,
      code_filter: settings.code_filter,
      pdf_filter: settings.pdf_filter,
      docs_filter: settings.docs_filter,
      image_filter: settings.image_filter,
      accounts: Enum.map(settings.accounts, fn a -> %{id: a.id, email: a.email} end),
      blacklist: Enum.map(settings.blacklist, fn b -> %{id: b.id, word: b.word} end)
    }
  end
end
