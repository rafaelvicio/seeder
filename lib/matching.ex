defmodule Matching do
  def start() do
    result1 = %Result{result_team1: "1", result_team2: "2"}
    result2 = %Result{result_team1: "1", result_team2: "2"}
    result3 = %Result{result_team1: "1", result_team2: "2"}
    result4 = %Result{result_team1: "1", result_team2: "2"}

    matchings = calculateMatching([result1, result2, result3, result4])
    IO.inspect(matchings)
  end

  defp calculateMatching(matchings) do
    matchings
    |> Enum.sort_by(fn matching -> String.to_integer())
  end
end
