defmodule Seeder do
    def start() do
        team1 = %Team{name: "Team 1", points: "00"}
        team2 = %Team{name: "Team 2", points: "50"}
        team3 = %Team{name: "Team 3", points: "25"}
        team4 = %Team{name: "Team 4", points: "12"}
        team5 = %Team{name: "Team 5", points: "04"}
        team6 = %Team{name: "Team 6", points: "32"}

        teamsSeed = calculateSeed([team1, team2, team3, team4, team5, team6])
        IO.inspect(teamsSeed)
        matchsSeed = calculateMatchs(teamsSeed)
        IO.inspect(matchsSeed)
    end

    defp calculateSeed(teams) do
        teams
        |> Enum.sort_by(fn team -> String.to_integer(team.points) end)
    end

    defp do_build([], result), do: result
    defp do_build([a, b | rest], result), do: do_build(rest, [%Match{team1: a, team2: b} | result])

    defp calculateMatchs(teams) do
        do_build(teams, [])
    end
end