defmodule Elixir.Schema do
  use Absinthe.Schema

  import_types Elixir.Schema.DataTypes

  query do
    @desc "Get a list of events"
    field :events, list_of(:event) do
      resolve fn _parent, _args, _resolution ->
        {:ok, Elixir.Log.list_events()}
      end
    end
  end
end
