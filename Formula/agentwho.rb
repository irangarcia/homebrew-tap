class Agentwho < Formula
  desc "Use the correct Claude and Codex account for every project"
  homepage "https://github.com/irangarcia/agentwho"
  url "https://github.com/irangarcia/agentwho/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "62c8dd7a75789a9a5bfd2374a13b13e7c83d5eda31b12a2bbfaf5b92ab0eff2a"
  license "MIT"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    ldflags = "-X github.com/irangarcia/agentwho/internal/cli.Version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/agentwho"
  end

  test do
    assert_match "agentwho #{version}", shell_output("#{bin}/agentwho version")
    assert_match "agentwho_prompt", shell_output("#{bin}/agentwho shell init zsh")
  end
end
