defmodule LoanCalculator do
  @moduledoc """
  Documentation for LoanCalculator.
  """

  @doc """
  Loan balance calculator

  ## Examples

      iex> LoanCalculator.calculator(10, 5000, 30)
      5519.4318039119225

  """
  def calculator(interest, amount, no_of_days) do
    interest_per_day = ((interest/100)/30) |> Float.floor(4) 
    total_interest = interest_per_day * amount
    total_balance = total_interest + amount
    case no_of_days > 0 do
      true  -> calculator(interest, total_balance, no_of_days-1)
      false ->  amount
    end
  end
end
