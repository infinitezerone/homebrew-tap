class AtlassianCli < Formula
  desc "Unified AI-native CLI for Atlassian (Jira + Confluence + Bitbucket)"
  homepage "https://github.com/infinitezerone/atlassian-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    url "https://github.com/infinitezerone/atlassian-cli/releases/download/v#{version}/atlassian-cli-aarch64-apple-darwin.tar.gz"
    sha256 "390d772902d69fea45d273902816d304383cf6661a020a3c11c8e7d8d1aeb15b"
  end

  on_linux do
    url "https://github.com/infinitezerone/atlassian-cli/releases/download/v#{version}/atlassian-cli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1cca6dc8ac7e87785c01799082235ac5da3e0201db486e2f525f5ab9a1b7a261"
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
