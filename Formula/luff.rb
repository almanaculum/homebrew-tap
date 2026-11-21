class Luff < Formula
  desc "Map, print, and patch files in a working tree"
  homepage "https://crates.io/crates/luff"
  url "https://files.pythonhosted.org/packages/0a/f5/cb860a8b75527f0bd371c63845157a65f9cf3665a4847579714a1a15e373/luff-0.9.0.tar.gz"
  sha256 "d1b4d643f2aecd2606a72be663077e4b8160be5eec95f2185df8931c01b6c7e2"
  license "AGPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "luff",
           *std_cargo_args(path: "crates/luff", features: %w[cli syntax-tree-sitter])
  end

  test do
    (testpath/"example.rs").write "pub fn homebrew_luff_smoke() -> u32 { 42 }\n"
    assert_match "homebrew_luff_smoke", shell_output("#{bin}/luff map --outline example.rs")
  end
end
