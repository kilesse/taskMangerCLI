defmodule TaskManagerCLI do
  alias TaskManager

  def run(args) do
    tasks = TaskManager.init()

    case args do
      # Adicionar tarefa
      ["add"] ->
        title = IO.gets("Título da tarefa: ") |> String.trim()
        description = IO.gets("Descrição da tarefa: ") |> String.trim()
        updated_tasks = TaskManager.add_task(tasks, title, description)
        TaskManager.save(updated_tasks)
        IO.puts("Tarefa adicionada com sucesso!")

      # Listar tarefas
      ["list"] ->
        TaskManager.list_tasks(tasks)

      # Completar tarefa
      ["complete", id] ->
        updated_tasks = TaskManager.complete_task(tasks, String.to_integer(id))
        TaskManager.save(updated_tasks)
        IO.puts("Tarefa completada!")

      # Remover tarefa
      ["remove", id] ->
        updated_tasks = TaskManager.remove_task(tasks, String.to_integer(id))
        TaskManager.save(updated_tasks)
        IO.puts("Tarefa removida!")

      _ ->
        IO.puts("Comando inválido!")
    end
  end

  def main do
    args = System.argv() # Lê os parâmetros diretamente da linha de comando
    run(args)
  end
end
