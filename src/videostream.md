# Makie&Documenter Videostream testing
Change to `draft = false` in this document's md file to run example
```@meta
draft = true
```

#### The following bit reaches the "display" bit in VSCode and then hangs
```@example
using CairoMakie

fig = Figure()
display(fig)
vs = VideoStream(fig)
recordframe!(vs)
recordframe!(vs)
save("empty_testmovie.mp4", vs)
nothing
```

```@raw html
<video autoplay loop muted playsinline controls src="../empty_testmovie.mp4" />
```
