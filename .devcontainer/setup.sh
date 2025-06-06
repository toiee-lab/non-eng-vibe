#!/bin/bash

# Claude Code for Web Development - Setup Script
echo "🌐 Claude Code Web開発環境をセットアップ中..."

# エラー時は停止
set -e

# カラー出力の設定
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

print_step() {
    echo -e "${BLUE}⚙️ $1${NC}"
}

print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️ $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

# npm グローバルディレクトリの設定（権限問題を回避）
print_step "npm グローバルディレクトリを設定中..."
mkdir -p ~/.local/bin
npm config set prefix ~/.local
export PATH=~/.local/bin:$PATH

# Claude Code のインストール
print_step "Claude Code をインストール中..."
if npm install -g @anthropic-ai/claude-code; then
    print_success "Claude Code インストール完了"
else
    print_warning "Claude Code インストールに失敗しました。手動でインストールが必要かもしれません。"
fi

# 必須Web開発ツールのインストール
print_step "Web開発ツールをインストール中..."
npm install -g \
    live-server \
    http-server \
    prettier \
    eslint \
    serve \
    nodemon 2>/dev/null || print_warning "一部のnpmパッケージのインストールに失敗しました"

# Pythonパッケージのインストール
print_step "Python Web開発パッケージをインストール中..."
pip3 install --user --no-warn-script-location \
    requests \
    beautifulsoup4 \
    flask \
    fastapi \
    uvicorn \
    python-multipart 2>/dev/null || print_warning "一部のPythonパッケージのインストールに失敗しました"

# ディレクトリ作成
print_step "作業ディレクトリを作成中..."
mkdir -p ~/.anthropic
mkdir -p ./claude-tmp

# 必要なディレクトリの作成
print_step "必要なディレクトリを作成中..."

# パスの更新
echo 'export PATH=~/.local/bin:$PATH' >> ~/.bashrc

# Claude Code 動作確認
print_step "Claude Code の動作確認中..."
if command -v claude &> /dev/null; then
    print_success "Claude Code が正常にインストールされました！"
    claude --version 2>/dev/null || true
else
    print_warning "Claude Code が見つかりません。PATHを更新して再試行..."
    source ~/.bashrc
    if command -v claude &> /dev/null; then
        print_success "Claude Code が正常にインストールされました！"
    else
        print_error "Claude Code のインストールに失敗しました"
        echo "手動でインストールが必要です: npm install -g @anthropic-ai/claude-code"
    fi
fi

print_success "セットアップ完了！"
echo ""
echo "🎉 Claude Code Web開発環境の準備ができました！"
echo ""
echo -e "${BLUE}💡 使い方のヒント:${NC}"
echo "1. ターミナルで 'claude' と入力してClaude Codeを起動"
echo "2. 初回は認証が必要です（APIキーの設定）"
echo "3. '/init' コマンドでプロジェクトを初期化"
echo "4. 「ウェブページを作って」「Pythonアプリを作って」と話しかけてみてください"
echo ""
echo -e "${BLUE}📁 フォルダ構成:${NC}"
echo "- claude-tmp/ - Claude Code の一時ファイル（.gitignoreで除外済み）"
echo "- その他のファイルは、このワークスペースのルートに作成されます"
echo ""
echo -e "${BLUE}🌐 プレビュー方法:${NC}"
echo "- HTMLファイルを右クリック → 'Open with Live Server'"
echo "- またはターミナルで 'live-server' (カレントディレクトリをサーブ)"