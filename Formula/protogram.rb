class Protogram < Formula
  desc "Quick and easy command line proto deserialization"
  homepage "https://github.com/mattprecious/protogram"
  url "https://github.com/mattprecious/protogram/releases/download/v0.2.0/protogram"
  sha256 "f2e35f77bde11a2b5f5c867a95492d5733a2ecbba5caa6aac28c65ad1f10289e"
  head "https://github.com/mattprecious/protogram.git"

  depends_on "openjdk"

  def install
    bin.install "protogram" => "protogram"
  end

  test do
    assert_match /Only one arg supported/, shell_output("#{bin}/protogram").strip
  end
end
