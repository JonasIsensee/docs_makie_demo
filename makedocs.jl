using Documenter
using Documenter.Remotes: GitLab
makedocs(;
    sitename = "InPartS.jl",
    build = "build",
    clean = true,
    doctest = false,
    draft=true,
    repo = GitLab("gitlab.gwdg.de", "eDLS", "InPartSDocs"),
    #pages = [],
    warnonly = [:cross_references, :missing_docs],
)