class SuperviewCli < Formula
  desc "Transforms a 4:3 aspect ratio video to 16:9 using the GoPro SuperView method"
  homepage "https://github.com/Niek/superview"
  url "https://github.com/Niek/superview/archive/refs/tags/v0.10.tar.gz"
  sha256 "70d57e6b6dea558fe193e76ea735bf085eb3550b1f33a411439e80544fc4d702"
  license "GPL-3.0-only"

  depends_on "go" => :build
  depends_on "ffmpeg"

  def install
    system "go", "env", "-w", "GOBIN=#{bin}"
    system "go", "build", "superview-cli.go"
    system "go", "install", "superview-cli.go"
  end

  test do
    shell_output("#{bin}/superview-cli -h")
  end
end
