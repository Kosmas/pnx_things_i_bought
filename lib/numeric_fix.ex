defimpl Phoenix.Html.Safe, for: Decimal do
  def to_string(dec) do
    Decimal.to_string(dec)
  end
end
