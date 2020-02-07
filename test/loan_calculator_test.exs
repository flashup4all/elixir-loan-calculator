defmodule LoanCalculatorTest do
  use ExUnit.Case
  doctest LoanCalculator

  test "calculate loan balance" do
    assert LoanCalculator.calculator(10, 5000, 30) == 5519.4318039119225
  end
end
