# Makie&Documenter Videostream testing

#### A video that also works
```@example
using CairoMakie

fig = Figure()
ax = Axis(fig[1,1])
plt = scatter!(ax, rand(100))

record(fig, "moving_scatter.mp4", framerate=20) do vs
    for _ = 1:10
        data = plt[1][]
        plt[1][] = Point2f.(first.(data), mod.(last.(data) .+ 1/10, 1))
        recordframe!(vs)
    end
    nothing
end 
nothing
```

```@raw html
<video autoplay loop muted playsinline controls src="../moving_scatter.mp4" />
```
