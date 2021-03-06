defmodule SealasApi.Accounting.InvoicePayment do
  use Ecto.Schema
  import Ecto.Changeset
  alias SealasApi.Accounting.Invoice
  alias SealasApi.Accounting.InvoicePayment


  schema "invoice_payment" do
    belongs_to :invoice, Invoice

    field :data,         :string
    field :year,         Ecto.UUID
    field :month,        Ecto.UUID
    field :ext_id,       Ecto.UUID
  end

  @doc false
  def changeset(%InvoicePayment{} = invoice_category, attrs) do
    invoice_category
    |> cast(attrs, [:data])
  end
end
