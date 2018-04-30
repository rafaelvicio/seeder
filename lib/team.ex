defmodule Team do
    @moduledoc """
    Define a Team struc and functions
    """
    defstruct name: nil, points: nil

    def get_points(team) do
        team.points
    end

end