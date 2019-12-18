class Protogram < Formula
  desc "Quick and easy command line proto deserialization"
  homepage "https://github.com/mattprecious/protogram"
  url "https://github.com/mattprecious/protogram/releases/download/0.1.0/protogram"
  sha256 "78535492b7486a9e32b03c6d08e40381019f45d2d856c4a78e13dafe8b2a8485"
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