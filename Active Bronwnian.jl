using Distributions
function activeswim(;F = 0.0002, Ω = 3.14, m = 5.0, ζ = 0.1)
    R = 1e-6
    η = 0.001
    T = 300
    kB = 1.38e-23
    γ = 6 * π * η * R
    Γ = 8 * π * η * R^3
    Dt = kB * T / γ
    Dr = kB * T / Γ
    t = 0
    dt = 0.01
    tmax = 10
    θ, x, y, v = rand() * 2 * π, 0, 0, 31e-2
    xlist = []
    ylist = []
    d = Normal()
    while t < tmax
        θ += √(2 * Dr * dt) * rand(d) +Ω * dt
        x += v * cos(θ) * dt + √(2 * Dt * dt) * rand(d) + F / (m * ζ) * dt
        y += v * sin(θ) * dt + √(2 * Dt * dt) * rand(d) + F / (m * ζ) * dt
        #print(xx,yy)
        xlist = vcat(xlist, x)
        ylist = vcat(ylist, y)
        t = t + dt
    end
    return xlist, ylist
end
