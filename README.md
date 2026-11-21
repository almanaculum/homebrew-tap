# Almanaculum Homebrew tap

This tap packages [Luff](https://crates.io/crates/luff), a Rust crate and
command-line tool for mapping, printing, and patching files in a working tree.
See the [Rust API documentation](https://docs.rs/luff/latest/luff/) for library use.

## Install

```sh
brew install almanaculum/tap/luff
luff --help
```

Run `luff map --no-counts` in a project to list its files. The formula builds
the Rust CLI from the 0.9.0 source archive published on PyPI.
