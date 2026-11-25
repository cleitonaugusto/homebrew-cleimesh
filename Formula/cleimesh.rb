class Cleimesh < Formula
  desc "Put MCP servers behind signed tokens, with taint and signed receipts"
  homepage "https://github.com/cleitonaugusto/cleimesh"
  version "0.2.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.5/cleimesh-aarch64-apple-darwin"
      sha256 "ea897d7df3abcef38b74eff7c7d3df7729bbea88d051ca4f3681c75bdf120817"
    end
    on_intel do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.5/cleimesh-x86_64-apple-darwin"
      sha256 "cd5ee6085c48cbea2412a09af44515867a27e57ca7cc9ac98aef8e8c9d5f4ed2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.5/cleimesh-aarch64-unknown-linux-musl"
      sha256 "517582fcec7d14151db52be9770881962cac6de6b731e117bf1576bbcc20bd85"
    end
    on_intel do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.5/cleimesh-x86_64-unknown-linux-musl"
      sha256 "d4219dac8725491a985676bcc2a2e89605bfb59fcdfd295117db17d9806e9a3f"
    end
  end

  def install
    bin.install Dir["cleimesh-*"].first => "cleimesh"
  end

  test do
    assert_match "cleimesh #{version}", shell_output("#{bin}/cleimesh --version")
  end
end
