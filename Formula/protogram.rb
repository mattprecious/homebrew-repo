class Protogram < Formula
  desc "Quick and easy command line proto deserialization"
  homepage "https://github.com/mattprecious/protogram"
  url "https://github.com/mattprecious/protogram/releases/download/0.2.1-test/protogram"
  version "0.2.1-test"
  sha256 "7ca4f11e89394b758c90460d5d2a21768ab5057fecd1dfc87dbec9e34fb33427"
  head "https://github.com/mattprecious/protogram.git"

  bottle :unneeded

  depends_on :java

  def install
    bin.install "protogram" => "protogram"
  end

  test do
    assert_match /Only one arg supported/, shell_output("#{bin}/protogram").strip
  end
end
