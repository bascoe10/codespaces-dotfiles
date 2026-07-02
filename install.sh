#!/usr/bin/env bash
set -euo pipefail

if ! command -v curl >/dev/null 2>&1; then
	echo "Error: curl is required but is not installed." >&2
	exit 1
fi

if ! command -v npm >/dev/null 2>&1; then
	echo "Error: npm is required but is not installed." >&2
	exit 1
fi

sudo apt-get install -y unzip

echo "Installing Claude Code CLI..."
npm install -g @anthropic-ai/claude-code
echo "Claude Code CLI installation complete."

echo "Pulling CLAUDE.md from gist..."
mkdir -p "$HOME/.claude"
curl -fsSL "https://gist.githubusercontent.com/bascoe10/1469e3e476c40a17296d0c68b5337b6e/raw/CLAUDE.md" -o "$HOME/.claude/CLAUDE.md"
echo "CLAUDE.md installed to ~/.claude/CLAUDE.md."

echo "Installing AWS CLI..."
if command -v aws >/dev/null 2>&1; then
	echo "AWS CLI already installed: $(aws --version)"
else
	curl -fsSL "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o /tmp/awscliv2.zip
	unzip -q /tmp/awscliv2.zip -d /tmp
	sudo /tmp/aws/install
	rm -rf /tmp/awscliv2.zip /tmp/aws
	echo "AWS CLI installation complete."
fi
