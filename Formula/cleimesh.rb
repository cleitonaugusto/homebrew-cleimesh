class Cleimesh < Formula
  desc "Put MCP servers behind signed tokens, with taint and signed receipts"
  homepage "https://github.com/cleitonaugusto/cleimesh"
  version "0.2.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.6/cleimesh-aarch64-apple-darwin"
      sha256 "f0ca77c41ee144cc57007b91258f74f41c11736e45b0aee9eef9cf106838045a"
    end
    on_intel do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.6/cleimesh-x86_64-apple-darwin"
      sha256 "b0cfbd7404b343aeb5c5083d807e899151401fc978e1578c716e501db9ea70f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.6/cleimesh-aarch64-unknown-linux-musl"
      sha256 "cd1893f1c1014b50eefbfb1b822430edae46524b6fae5cf7445b2a886c8232aa"
    end
    on_intel do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.6/cleimesh-x86_64-unknown-linux-musl"
      sha256 "932960966cd4c4fd3587188f41133a22a8b30140f09d43656831b1630fc9fba2"
    end
  end

  def install
    bin.install Dir["cleimesh-*"].first => "cleimesh"
  end

  test do
    assert_match "cleimesh #{version}", shell_output("#{bin}/cleimesh --version")
  end
end
