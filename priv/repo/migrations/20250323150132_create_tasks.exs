defmodule TodoApi.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :title, :string
      add :description, :string
      add :is_done, :boolean, default: false
      timestamps(type: :utc_datetime)
    end
  end
end
