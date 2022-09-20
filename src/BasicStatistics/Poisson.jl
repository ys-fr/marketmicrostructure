@doc raw"""
    PoissonIntensity(t::AbstractArray,; [data::AbstractArray=t]) -> Float64

    # A brief description of this function.
    This function estimate intensity of the poisson process:
        ```math
            \lambda = 1/\frac{1}{\tau-1}\sum^{\tau-1}_{i=1}(t_{i+1}-t_{i}),
        ```
    where $t_i$ denote the time $i$th event occured.
"""

function PoissonIntensity(y::AbstractArray;data::AbstractArray=y)::Float64
    return 1/mean(diff(data))
end
