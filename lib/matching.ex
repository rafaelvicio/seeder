defmodule Matching do
  def start() do
    result1 = %Result{team1: "1", team2: "2", result_team1: "1", result_team2: "2"}
    result2 = %Result{team1: "3", team2: "4", result_team1: "1", result_team2: "2"}
    result3 = %Result{team1: "5", team2: "6", result_team1: "1", result_team2: "2"}
    result4 = %Result{team1: "7", team2: "8", result_team1: "1", result_team2: "2"}

    IO.puts("Times e Resultados: ")
    IO.inspect([result1, result2, result3, result4])
    results = [result1, result2, result3, result4]
    calculateMatching(results)
  end

  defp calculeWinner([], result), do: result
  defp calculeWinner([a | rest], result) do
    IO.puts("Time:")
    IO.inspect(a)
    if a.result_team1 > a.result_team2 do 
      IO.puts("Time 1 ganhou")
      calculeWinner(rest, [%Team{name: a.team1} | result])
    else
      IO.puts("Time 2 ganhou")
      calculeWinner(rest, [%Team{name: a.team2} | result])
    end
  end

  defp calculateMatching(matchings) do
    calculeWinner(matchings, [])
  end
end
