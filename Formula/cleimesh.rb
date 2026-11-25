class Cleimesh < Formula
  desc "Put MCP servers behind signed tokens, with taint and signed receipts"
  homepage "https://github.com/cleitonaugusto/cleimesh"
  version "0.2.7"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.7/cleimesh-aarch64-apple-darwin"
      sha256 "18f7473e171687136c16877a967061a13f18bf1429e144f82074e072ca4d42aa"
    end
    on_intel do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.7/cleimesh-x86_64-apple-darwin"
      sha256 "72f60b14b6bda705d4001e634bd6d50b9e63bc30816588a75d62799eaf6faf1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.7/cleimesh-aarch64-unknown-linux-musl"
      sha256 "13abff0f7869a77d93e0cb9be8e93e7eff7a8a5ab0b6382f09721c8240b0afb2"
    end
    on_intel do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.7/cleimesh-x86_64-unknown-linux-musl"
      sha256 "a90370b07063bd02e4bd671b2a872f4dfb68756b001c8dd21b232f8540336788"
    end
  end

  def install
    bin.install Dir["cleimesh-*"].first => "cleimesh"
  end

  test do
    assert_match "cleimesh #{version}", shell_output("#{bin}/cleimesh --version")
  end
end
