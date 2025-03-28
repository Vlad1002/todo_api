defmodule TodoApi.TasksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TodoApi.Tasks` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        description: "some description",
        is_done: true,
        title: "some title"
      })
      |> TodoApi.Tasks.create_task()

    task
  end
end
