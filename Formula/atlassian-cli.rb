class AtlassianCli < Formula
  desc "Unified AI-native CLI for Atlassian (Jira + Confluence + Bitbucket)"
  homepage "https://github.com/infinitezerone/atlassian-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    url "https://github.com/infinitezerone/atlassian-cli/releases/download/v#{version}/atlassian-cli-aarch64-apple-darwin.tar.gz"
    sha256 "eddf05d2cdfb18c30fb77d3ebe86806520f80e5a43f25a093c0ce0b19597aed6"
  end

  on_linux do
    url "https://github.com/infinitezerone/atlassian-cli/releases/download/v#{version}/atlassian-cli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "24412864a33e2c95ca7ea732c3275767a0bfa4144a4df3b03b0f70d23dd4a245"
  end

  def install
    bin.install "atlassian-cli"
  end

  def caveats
    <<~EOS
      🎉 安装/升级完成！
      若要在当前终端窗口立即使用，请运行:
        exec $SHELL   (或直接打开一个新的终端窗口)

      👉 运行以下命令完成接入配置:
        atlassian-cli login

      🤖 运行以下命令一键部署官方 AI Agent Skill:
        atlassian-cli skill install
    EOS
  end

  test do
    assert_match "atlassian-cli", shell_output("#{bin}/atlassian-cli --help")
  end
end
