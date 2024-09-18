# Makie & Documenter Build Hang Demo

**Steps to reproduce:**

- Instantiate environment
- Run `makedocs.jl` file. This should work!
- Remove `draft=true` in any of 
    - `src/just_error.md` → Build fails as expected
    - `src/error_record.md` → Build hangs
    - `src/videostream.md` → No obvious error (code works if copied into REPL) but still build hangs