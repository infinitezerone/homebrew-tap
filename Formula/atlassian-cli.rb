class AtlassianCli < Formula
  desc "Unified AI-native CLI for Atlassian (Jira + Confluence + Bitbucket)"
  homepage "https://github.com/infinitezerone/atlassian-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    url "https://github.com/infinitezerone/atlassian-cli/releases/download/v#{version}/atlassian-cli-aarch64-apple-darwin.tar.gz"
    sha256 "aaf582f4f048c8be8b01cd7d2e53c78b63b45f6b534f3e6c6a451284c908da12"
  end

  on_linux do
    url "https://github.com/infinitezerone/atlassian-cli/releases/download/v#{version}/atlassian-cli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4e23ffcb4164285c8c8863a8485ce74c152bc492f73769174ec2098ffe1177d1"
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
