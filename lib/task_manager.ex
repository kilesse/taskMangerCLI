defmodule TaskManager do
  @tasks_file "tasks.json"

  def init do
    if File.exists?(@tasks_file) do
      {:ok, content} = File.read(@tasks_file)
      Jason.decode!(content, keys: :atoms)
    else
      []
    end
  end

  def save(tasks) do
    File.write!(@tasks_file, Jason.encode!(tasks))
  end

  def add_task(tasks, title, description \\ "") do
    id = Enum.count(tasks) + 1
    new_task = %{id: id, title: title, description: description, status: :pending}
    [new_task | tasks]
  end

  def list_tasks(tasks) do
    Enum.each(tasks, fn task ->
      IO.puts("#{task.id}. [#{task.status}] #{task.title} - #{task.description}")
    end)
  end

  def complete_task(tasks, id) do
    Enum.map(tasks, fn task ->
      if task.id == id do
        %{task | status: :completed}
      else
        task
      end
    end)
  end

  def remove_task(tasks, id) do
    Enum.reject(tasks, fn task -> task.id == id end)
  end
end
