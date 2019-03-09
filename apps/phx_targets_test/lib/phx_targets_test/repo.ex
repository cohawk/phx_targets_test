defmodule PhxTargetsTest.Repo do
  use Ecto.Repo,
    otp_app: :phx_targets_test,
    adapter: Ecto.Adapters.Postgres
end
