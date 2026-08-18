class AtlassianCli < Formula
  desc "Unified AI-native CLI for Atlassian (Jira + Confluence + Bitbucket)"
  homepage "https://github.com/infinitezerone/atlassian-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    url "https://github.com/infinitezerone/atlassian-cli/releases/download/v#{version}/atlassian-cli-aarch64-apple-darwin.tar.gz"
    sha256 "bce9f0d99ab0e41ba54b9be844d3da378b610cf1fcd2cbca2cfacc62b53d0375"
  end

  on_linux do
    url "https://github.com/infinitezerone/atlassian-cli/releases/download/v#{version}/atlassian-cli-x86_64-unknown-linux-gnu.tar.gz"
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
