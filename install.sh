#!/usr/bin/env bash
set -e

echo "Installing Claude Code CLI..."

# Install Claude Code CLI
curl -fsSL https://install.anthropic.com/claude/code/install.sh | bash

# Ensure PATH is updated for all shells
echo 'export PATH="$HOME/.claude/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="$HOME/.claude/bin:$PATH"' >> ~/.zshrc

echo "Claude Code CLI installation complete."