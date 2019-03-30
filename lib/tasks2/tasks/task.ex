defmodule Tasks2.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset


  schema "tasks" do
    field :desc, :string
    field :name, :string
    field :task_status, :boolean, default: false
    field :work_time, :integer
    has_many :time_block, Tasks2.TimeBlocks.TimeBlock
    belongs_to :user, Tasks2.Users.User

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:name, :desc, :work_time, :task_status, :user_id])
    |> validate_required([:name, :desc, :work_time, :task_status, :user_id])
  end
end
