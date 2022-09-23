@doc raw"""
    Variogram(y::AbstractArray, l::Int,; [data::AbstractArray=y, lag::Int=l]) -> Vector{Float64}

    # A brief description of variogram
    This function calculate variogram statistics ``V(\tau)``:
        ```math
            V(\tau) := \left\langle \left(y(\tau) -y(0)\right)^2 \right\rangle.
        ```
    Variogram statistic is often used to distinguish the class of statistical processes. In most cases, the variogram statistic grows power-law (``V(\tau)\tau^{2H}``), and that power-law exponent ``H`` can use for the classification of the dynamics:
    \begin{itemize}
        \item If ``H=0.5``, the dynamics might be Brownian motion.
        \item If ``H>0.5``, the dynamics might be the long memory process.
        \item If ``H<0.5``, the dynamics might be the short memory process.
    \end{itemize}
"""

function Variogram(y::AbstractArray, l::Int=10,;data::AbstractArray=y, lags::Int=l)::Vector{Float64}
    result::Vector{Float64} = zeros(Float64,lags);
    n::Int64 = length(data)
    for i in 1:lags
        result[i] = mean( (data[1:n-i] -data[i+1:n]).^2)
    end
    return result
end
