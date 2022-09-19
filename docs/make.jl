using marketmicrostructure
using Documenter

DocMeta.setdocmeta!(marketmicrostructure, :DocTestSetup, :(using marketmicrostructure); recursive=true)

makedocs(;
    modules=[marketmicrostructure],
    authors="Yuki Sato",
    repo="https://github.com/@ys-fr/marketmicrostructure.jl/blob/{commit}{path}#{line}",
    sitename="marketmicrostructure.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://@ys-fr.github.io/marketmicrostructure.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/@ys-fr/marketmicrostructure.jl",
    devbranch="master",
)
