defmodule Tasks2.Users.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :admin, :boolean, default: false
    field :email, :string
    field :manager, :integer
    has_many :task, Tasks2.Tasks.Task
    has_many :underlings, Tasks2.Users.User, foreign_key: :manager


    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :admin, :manager])
    |> validate_required([:email, :admin, :manager])
  end
end
