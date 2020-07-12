class Protogram < Formula
  desc "Quick and easy command line proto deserialization"
  homepage "https://github.com/mattprecious/protogram"
  url "https://github.com/mattprecious/protogram/releases/download/0.2.1-test/protogram"
  version "0.2.1-test"
  sha256 "04b1ea33fb0a102ffa087465db61026f27c6ea952bf790baa817e03e34bbef80"
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
