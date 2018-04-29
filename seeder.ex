defmodule Seeder do
    def start() do
        team1 = %Team{name: "Team 1", points: "00"}
        team2 = %Team{name: "Team 2", points: "50"}
        team3 = %Team{name: "Team 3", points: "25"}
        team4 = %Team{name: "Team 4", points: "12"}
        team5 = %Team{name: "Team 5", points: "04"}
        team6 = %Team{name: "Team 6", points: "32"}

        result = calculateSeed([team1, team2, team3, team4, team5, team6])
        IO.inspect(result)
    end

    def calculateSeed(teams) do
        teams
        |> Enum.sort_by(fn team -> String.to_integer(team.points) end)
    end

    def calculateMatchs(teams) do
        teams
    end
end