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

function resample(T::AbstractArray{Float64,1}, t1::Float64=1.0, s::Float64 = min(T...), e::Float64 = max(T...); t::AbstractArray{Float64,1}=T, interval::Float64 = t1, Start::Float64 = s, End::Float64 = e )
    x::Vector{Float64} = collect(Start:interval:End)
    y::Vector{Float64} = [sum( x[i].<=t.<x[i+1] ) for i in 1:length(x)-1]
    return (x[1:end-1] .+ interval/2) ,y
end

function resample(T::AbstractArray{Int64,1}, t1::Float64=1.0, s::Int64 = min(T...), e::Int64 = max(T...); t::AbstractArray{Int64,1}=T, interval::Float64 = t1, Start::Int64 = s, End::Int64 = e )
    x::Vector{Float64} = collect(Start:interval:End)
    y::Vector{Float64} = [sum( x[i].<=t.<x[i+1] ) for i in 1:length(x)-1]
    return (x[1:end-1] .+ interval/2) ,y
end

function resample(T::AbstractArray{Float64,1}, t1::Int64=1, s::Float64 = min(T...), e::Float64 = max(T...); t::AbstractArray{Float64,1}=T, interval::Int64 = t1, Start::Float64 = s, End::Float64 = e )
    x::Vector{Float64} = collect(Start:interval:End)
    y::Vector{Float64} = [sum( x[i].<=t.<x[i+1] ) for i in 1:length(x)-1]
    return (x[1:end-1] .+ interval/2) ,y
end

function resample(T::AbstractArray{Int64,1}, t1::Int64=1, s::Int64 = min(T...), e::Int64 = max(T...); t::AbstractArray{Int64,1}=T, interval::Int64 = t1, Start::Int64 = s, End::Int64 = e )
    x::Vector{Float64} = collect(Start:interval:End)
    y::Vector{Float64} = [sum( x[i].<=t.<x[i+1] ) for i in 1:length(x)-1]
    return (x[1:end-1] .+ interval/2) ,y
end
