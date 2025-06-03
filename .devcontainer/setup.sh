#!/bin/bash

# Claude Code Development Environment Setup Script
echo "🚀 Setting up Claude Code development environment..."

# Update package list
sudo apt-get update

# Install curl if not available
if ! command -v curl &> /dev/null; then
    echo "📦 Installing curl..."
    sudo apt-get install -y curl
fi

# Install Claude Code
echo "🤖 Installing Claude Code..."
curl -fsSL https://docs.anthropic.com/claude/install.sh | bash

# Add Claude Code to PATH
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
export PATH="$HOME/.local/bin:$PATH"

# Create .anthropic directory if it doesn't exist
mkdir -p ~/.anthropic

# Set up completion for bash
if command -v claude &> /dev/null; then
    echo "✅ Claude Code installed successfully!"
    echo "📋 Setting up shell completion..."
    claude completion bash >> ~/.bashrc
else
    echo "❌ Claude Code installation failed"
    exit 1
fi

# Install additional useful tools
echo "🛠️ Installing additional development tools..."
sudo apt-get install -y \
    jq \
    tree \
    htop \
    wget \
    unzip \
    git-lfs

# Install Python packages that work well with Claude Code
echo "🐍 Installing Python packages..."
pip3 install --user \
    requests \
    beautifulsoup4 \
    pandas \
    numpy \
    matplotlib \
    jupyter \
    black \
    flake8 \
    pytest

# Install Node.js packages
echo "📦 Installing Node.js packages..."
npm install -g \
    typescript \
    ts-node \
    nodemon \
    prettier \
    eslint

# Set up git config (if not already configured)
if ! git config --global user.name > /dev/null 2>&1; then
    echo "⚙️ Please configure git with your name and email:"
    echo "git config --global user.name 'Your Name'"
    echo "git config --global user.email 'your.email@example.com'"
fi

# Create a sample project structure
echo "📁 Creating sample project structure..."
mkdir -p ~/projects/claude-code-example
cd ~/projects/claude-code-example

# Create a simple README
cat > README.md << 'EOF'
# Claude Code Example Project

This is a sample project set up for use with Claude Code.

## Getting Started

1. Authenticate with Claude Code:
   ```bash
   claude auth
   ```

2. Start coding with Claude:
   ```bash
   claude
   ```

## Useful Commands

- `claude --help` - Show help
- `claude chat` - Start an interactive chat
- `claude generate` - Generate code from description
- `claude review` - Review your code

## Project Structure

```
.
├── README.md
├── src/
├── tests/
└── docs/
```
EOF

# Create basic project directories
mkdir -p src tests docs

# Create a simple example file
cat > src/example.py << 'EOF'
#!/usr/bin/env python3
"""
Example Python file for Claude Code demonstration
"""

def hello_world():
    """Simple hello world function"""
    return "Hello, World from Claude Code!"

if __name__ == "__main__":
    print(hello_world())
EOF

# Create a simple package.json for Node.js projects
cat > package.json << 'EOF'
{
  "name": "claude-code-example",
  "version": "1.0.0",
  "description": "Example project for Claude Code",
  "main": "src/index.js",
  "scripts": {
    "start": "node src/index.js",
    "dev": "nodemon src/index.js",
    "test": "jest"
  },
  "keywords": ["claude", "ai", "development"],
  "author": "",
  "license": "MIT"
}
EOF

# Create a simple JavaScript example
cat > src/index.js << 'EOF'
// Example JavaScript file for Claude Code demonstration

function helloWorld() {
    return "Hello, World from Claude Code!";
}

console.log(helloWorld());

module.exports = { helloWorld };
EOF

echo "✅ Setup complete!"
echo ""
echo "🎉 Your Claude Code development environment is ready!"
echo ""
echo "Next steps:"
echo "1. Authenticate with Claude Code: claude auth"
echo "2. Start coding: claude"
echo "3. Explore the example project in ~/projects/claude-code-example"
echo ""
echo "💡 Tip: Use 'claude --help' to see all available commands"
