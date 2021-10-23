defmodule ExKucoin.Market.Price do
  @moduledoc """
  Request via this endpoint to get the fiat price of the currencies for the available trading pairs. [API Docs](https://docs.kucoin.com/#get-fiat-price)
  """
  import ExKucoin.Api.Public

  @doc """
  Gets Fiat price

  # Examples

  ## One coin

    iex> ExKucoin.Market.Price.all(%{currencies: "KCS"})
    {:ok, %{"code" => "200000", "data" => %{"KCS" => "15.44999978"}}}

  ## Several coins

    iex> ExKucoin.Market.Price.all(%{currencies: "KCS,BTC"})
    {:ok,
     %{
       "code" => "200000",
       "data" => %{"BTC" => "61312.07847946", "KCS" => "15.44999978"}
     }}

  ## EUR base

    iex(7)> ExKucoin.Market.Price.all(%{currencies: "KCS", base: "EUR"})
    {:ok, %{"code" => "200000", "data" => %{"KCS" => "13.25380304"}}}
  """
  def all(params, config \\ nil) do
    get("/api/v1/prices", params, config)
  end
end
