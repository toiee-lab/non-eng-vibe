#!/bin/bash

# Claude Code for Web Development - Setup Script
echo "🌐 Setting up Claude Code for Web Development..."

# Set up npm global directory for user (avoid permission issues)
echo "⚙️ Setting up npm global directory..."
mkdir -p ~/.local/bin
npm config set prefix ~/.local
export PATH=~/.local/bin:$PATH

# Install Claude Code
echo "🤖 Installing Claude Code..."
npm install -g @anthropic-ai/claude-code

# Install essential web development tools
echo "📦 Installing web development tools..."
npm install -g \
    live-server \
    http-server \
    create-react-app \
    vite \
    prettier \
    eslint

# Install Python packages for web development
echo "🐍 Installing Python web development packages..."
pip3 install --user \
    requests \
    beautifulsoup4 \
    flask \
    fastapi \
    uvicorn

# Create .anthropic directory
mkdir -p ~/.anthropic
mkdir ./claude-tmp

# Verify Claude Code installation
if command -v claude &> /dev/null; then
    echo "✅ Claude Code installed successfully!"
else
    echo "❌ Claude Code installation failed"
    echo "🔍 Trying alternative installation..."
    export PATH=~/.local/bin:$PATH
    source ~/.bashrc
fi

echo "✅ Setup complete!"
echo ""
echo "🎉 Claude Code Web Development Environment is ready!"
echo ""
echo "💡 ヒント:"
echo "- VS Codeでindex.htmlを開いてライブプレビューできます"
echo "- ポート3000, 5000, 8000が利用可能です"
echo "- Claude Codeに「ウェブページを作って」と話しかけてみてください！"
