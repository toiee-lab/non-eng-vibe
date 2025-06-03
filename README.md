# Claude Code Development Container

このリポジトリは、GitHub CodespacesでClaude Codeをすぐに使い始められるように設定された開発コンテナです。 

*created by Claude Sonnet 4*

## 🚀 使い方

### 1. Codespacesでの起動

1. このリポジトリをGitHubでフォークまたはクローン
2. 緑色の「Code」ボタンをクリック
3. 「Codespaces」タブを選択
4. 「Create codespace on main」をクリック

### 2. Claude Codeの認証

コンテナが起動したら、ターミナルで以下を実行：

```bash
claude auth
```

AnthropicのAPIキーを入力してください。

### 3. Claude Codeの使用開始

```bash
# インタラクティブモードで開始
claude

# チャットモードで開始
claude chat

# ヘルプを表示
claude --help
```

## 📦 含まれているツール

- **Claude Code** - Anthropicのコマンドライン開発ツール
- **Node.js (LTS)** - JavaScript/TypeScript開発
- **Python 3.11** - Python開発
- **Git & GitHub CLI** - バージョン管理
- **開発支援ツール** - jq, tree, htop など

## 🐍 Python パッケージ

以下のPythonパッケージがプリインストールされています：

- requests
- beautifulsoup4
- pandas
- numpy
- matplotlib
- jupyter
- black (コードフォーマッター)
- flake8 (リンター)
- pytest (テストフレームワーク)

## 📦 Node.js パッケージ

以下のNode.jsパッケージがグローバルにインストールされています：

- typescript
- ts-node
- nodemon
- prettier
- eslint

## 🎯 サンプルプロジェクト

`~/projects/claude-code-example` にサンプルプロジェクトが作成されます。
PythonとJavaScriptの基本的な例が含まれています。

## ⚙️ カスタマイズ

### 追加パッケージのインストール

Python:
```bash
pip install package-name
```

Node.js:
```bash
npm install -g package-name
```

### 設定ファイルの編集

- `.devcontainer/devcontainer.json` - コンテナ設定
- `.devcontainer/setup.sh` - セットアップスクリプト

## 🔧 トラブルシューティング

### Claude Codeが見つからない場合

```bash
export PATH="$HOME/.local/bin:$PATH"
source ~/.bashrc
```

### APIキーの再設定

```bash
claude auth --reset
```

### セットアップスクリプトの再実行

```bash
bash .devcontainer/setup.sh
```

## 📚 参考リンク

- [Claude Code 公式ドキュメント](https://docs.anthropic.com)
- [Anthropic API ドキュメント](https://docs.anthropic.com)
- [GitHub Codespaces ドキュメント](https://docs.github.com/codespaces)

## 💡 ヒント

1. **効果的なプロンプト**: Claude Codeには具体的で詳細な指示を与えましょう
2. **ステップバイステップ**: 複雑なタスクは小さなステップに分けて依頼
3. **コンテキストの提供**: 関連するファイルや要件を明確に説明
4. **コードレビュー**: `claude review` でコードの品質をチェック

Happy coding with Claude! 🤖✨
