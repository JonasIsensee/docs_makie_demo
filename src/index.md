# Makie&Documenter Videostream testing

#### A first example to show that plotting works
```@example
using CairoMakie

fig = Figure()
ax = Axis(fig[1,1])
scatter!(ax, rand(100))
fig
```