class Agentwho < Formula
  desc "Use the correct Claude and Codex account for every project"
  homepage "https://github.com/irangarcia/agentwho"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.4/agentwho_0.1.4_darwin_amd64.tar.gz"
    sha256 "d2b3cdb0403e4d7df266e92ef0736c5a3ed14936194a65e4a84574c0f3ba4021"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.4/agentwho_0.1.4_darwin_arm64.tar.gz"
    sha256 "d8a1c3a52fb3d1d0f25d858778810197a39a39ea99842c10559c7d6288679fb8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.4/agentwho_0.1.4_linux_amd64.tar.gz"
    sha256 "22578e60fc898e6aa890c64c1b2280a35560826ec992aca6816ed0a797035f59"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.4/agentwho_0.1.4_linux_arm64.tar.gz"
    sha256 "ef217daaaecf24a1a222e32ff4d7b7df50330c6df94ae6c74742bead04fbc5d4"
  end

  def install
    bin.install "agentwho"
  end

  test do
    assert_match "agentwho #{version}", shell_output("#{bin}/agentwho version")
    assert_match "agentwho_prompt", shell_output("#{bin}/agentwho shell init zsh")
  end
end
