defmodule LoanCalculator do
  @moduledoc """
  Documentation for LoanCalculator.
  """

  @doc """
  Loan balance calculator

  ## Examples

      iex> LoanCalculator.calculator()
      :world

  """
  def calculator(interest, amount, days) do
    interest_per_day = ((interest/100)/30) |> Float.floor(4) 
    total_interest = interest_per_day * amount
    total_balance = total_interest + amount
    case days > 0 do
      true  -> calculator(interest, total_balance, days-1)
      false ->  amount
    end
  end
end
