class Cleimesh < Formula
  desc "Put MCP servers behind signed tokens, with taint and signed receipts"
  homepage "https://github.com/cleitonaugusto/cleimesh"
  version "0.2.8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.8/cleimesh-aarch64-apple-darwin"
      sha256 "3d19b042f070137ae19fe376cac0999b07d0a9dd1e0fe44884c82b4aa35848d9"
    end
    on_intel do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.8/cleimesh-x86_64-apple-darwin"
      sha256 "2d72a89b1df8cc51502e8a9ac618d45be04e4095aecb6c82b775f357aab54841"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.8/cleimesh-aarch64-unknown-linux-musl"
      sha256 "8f663a277767e261b2d563dce67a02068216e5a220779206ac20473f4de4aa0c"
    end
    on_intel do
      url "https://github.com/cleitonaugusto/cleimesh/releases/download/v0.2.8/cleimesh-x86_64-unknown-linux-musl"
      sha256 "e443f35fbc35502312ea83c5f4826ff04bf875fdf2a0b1a5155401e609891496"
    end
  end

  def install
    bin.install Dir["cleimesh-*"].first => "cleimesh"
  end

  test do
    assert_match "cleimesh #{version}", shell_output("#{bin}/cleimesh --version")
  end
end
