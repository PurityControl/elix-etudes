# Courses

Implementation of Elixir Etudes 7.1

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add courses to your list of dependencies in `mix.exs`:

        def deps do
          [{:courses, "~> 0.0.1"}]
        end

  2. Ensure courses is started before your application:

        def application do
          [applications: [:courses]]
        end
