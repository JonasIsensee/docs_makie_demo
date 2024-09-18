using Documenter
using Documenter.Remotes: GitLab
using CairoMakie
makedocs(;
    sitename = "MakieVideostream-TestingSite",
    clean = true,
    remotes = nothing,
    draft = false,
    pagesonly = true,
    pages = [
        "justfigure" => "index.md",
        "record" => "record.md",
        "just_error" => "just_error.md",
        "error_record" => "error_record.md",
        "videostream" => "videostream.md",
    ]
)