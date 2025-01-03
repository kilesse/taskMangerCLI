defmodule TaskManager.Tasks do
  defstruct id: nil, title: "", description: "", status: :pending

  def new(id, title, description \\ "") do
    %__MODULE__{id: id, title: title, description: description}
  end
end
