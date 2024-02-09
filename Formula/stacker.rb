class Stacker < Formula
  desc "Command line tool for creating and managing Git branch stacks."
  homepage "https://github.com/mattprecious/stacker"
  version "latest"
  head "https://github.com/mattprecious/stacker.git"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/mattprecious/stacker/releases/download/latest/stacker-macosArm64.zip"
    else
      url "https://github.com/mattprecious/stacker/releases/download/latest/stacker-macosX64.zip"
    end
  else
    odie "OS is not currently supported."
  end

  def install
    bin.install "stacker.kexe" => "st"
  end

  test do
    output = shell_output("#{bin}/st --help")
    assert_includes output, "Usage: st"
  end
end
