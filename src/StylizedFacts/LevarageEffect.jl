
function LevarageEffect(y::AbstractArray{Float64,1},n::Int64; data::AbstractArray{Float64,1}=y, nlags::Int64 = n)
    #calculate statistics
    r::Vector{Float64} = diff(log.(data))
    sigma::Vector{Float64} =r.^2
    #calculate Levarage statistics
    save::Vector{Float64} = zeros(Float64,nlags)
    x::Vector{Int64} = collect(1:nlags)
    for i in x
        save[i] = mean((r[1:end-i]) .* (sigma[i+1:end]) )
    end
    save = save./mean(sigma)^2
    return x, save
end
