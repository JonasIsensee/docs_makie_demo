# Makie&Documenter Videostream testing
Change to `draft = false` in this document's md file to run example
```@meta
draft = true
```


#### A video that explicitly throws 
```@example
using CairoMakie

fig = Figure()
ax = Axis(fig[1,1])
plt = scatter!(ax, rand(100))

record(fig, "moving_scatter2.mp4", framerate=20) do vs
    for _ = 1:10
        error("Throwing an error makes the build process hang")
        data = plt[1][]
        plt[1][] = Point2f.(first.(data), mod.(last.(data) .+ 1/10, 1))
        recordframe!(vs)
    end
    nothing
end 
nothing
```

```@raw html
<video autoplay loop muted playsinline controls src="../moving_scatter2.mp4" />
```
