defmodule Demo do
  def to_sql(query) do
    Ecto.Adapters.SQL.to_sql(:all, Demo.Repo, query)
  end

  def query_raw(sql, variables \\ []) do
    Ecto.Adapters.SQL.query(Demo.Repo, sql, variables)
  end
end
