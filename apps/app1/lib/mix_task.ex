defmodule Mix.Tasks.Reproduce do
  use Mix.Task

  def run([application_name | _argv]) do
    app_path = Mix.Project.config()[:apps_path]
    Mix.Project.in_project(application_name, Path.join([app_path, to_string(application_name)]), fn _module ->
      IO.puts Mix.Project.config()[:app]
    end)
  end
end
