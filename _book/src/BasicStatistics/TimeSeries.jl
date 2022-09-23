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

using Base:@kwdef

@kwdef mutable struct EventTimeSeries
    Event::AbstractArray{Float64, 1}
    SampleBand::Float64
    SampleTime::Vector{Float64} = []
    SampleEvent::Vector{Float64} = []
    function EventTimeSeries(a::AbstractArray{Float64, 1},b::Float64,;Event::AbstractArray{Float64, 1}=a,SampleBand::Float64=b)
        return new(1, y, z, t, u, v)
    end
end

@kwdef mutable struct EventTimeSeries
    T::AbstractArray{Int64, 1}
    ReSampleBand = 1.0
    ReSampleTime::Vector{Float64} = []
    ReSampleEvent::Vector{Float64} = []
end