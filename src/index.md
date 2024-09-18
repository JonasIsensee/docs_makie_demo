# DummySite

```@example
using CairoMakie

fig = Figure()
display(fig)
vs = VideoStream(fig)
recordframe!(vs)
save("empty_testmovie.mp4", vs)
```