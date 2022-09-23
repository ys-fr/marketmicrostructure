module marketmicrostructure
    using Documenter
    # Write your package code here.
    # rule: do not write code directly.
    # what you can write here is "include(code_path)" and "export(function_name)".

    include("BasicStatistics/Variogram.jl")
    export Variogram

end
