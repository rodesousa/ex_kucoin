defmodule ExKucoin.StopOrder.Order do
  @moduledoc """
  Handles stop orders
  """

  import ExKucoin.Api.Private

  @prefix "/api/v1/stop-order"

  @doc """
  Request via this endpoint to get your current stop order list

  [API Docs](https://docs.kucoin.com/#list-stop-orders)
  """
  def list(params \\ %{}, config \\ nil) do
    get(@prefix, params, config)
  end

  @doc """
  Request via this endpoint to create a stop order list

  [API](https://docs.kucoin.com/#place-a-new-order-2)
  """
  def create(params, config \\ nil) do
    post(@prefix, params, config)
  end
end
