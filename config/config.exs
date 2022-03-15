use Mix.Config

if Mix.env() == :dev do
  config :git_hooks,
    hooks: [
      pre_commit: [
        tasks: [
          {:cmd, "mix format --check-formatted"}
        ]
      ]
    ],
    project_path: File.cwd!()
end
