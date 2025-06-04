# Claude Code Development Container

このテンプレート・リポジトリは、非エンジニアが、GitHub Codespaces で、 Claude Code をすぐに使い始められるように設定された軽量開発コンテナです。 

*created by Claude Sonnet 4*

## 🚀 使い方

### 1. Codespacesでの起動

1. このリポジトリのページの右上の緑のボタン「Use this template」をクリック
2. 「Create a new repository」を選択
3. お好きな名前、簡単な説明、Public or Private (Privateがおすすめ)を選び、Codespaceを作成してください

しばらく待つと、使えるようになります。

### 2. Claude Codeの認証

ターミナルを開いてください。もしかしたら、「新規ターミナル」を開く必要があるかも知れません。次に、Claude Codeの設定を行います。

事前に、[https://console.anthropic.com/settings/billing](https://console.anthropic.com/settings/billing) で、アカウント作成、クレジットカード登録（チャージ）を済ませておいてください。事前にログインもしておくことをおすすめします！

Anthropic のアカウントがあるなら、次のコマンドを実行してください。初めての時（Anthropicにログインしていない場合）は、初期設定の後、ログインのためにAPIキー取得などの手順が示されるので、したがって、APIキーを入力してください。

```bash
claude
```

### 3. Claude Codeの使い方

```bash
# インタラクティブモードで開始
claude

# 前回の続きをする
claude -c

# 特定の会話を選んで続きをする
claude --resume

# アップデート
claude update

# ヘルプを表示
claude --help
```

Claude Codeを起動した後のコマンド

```bash
# 初期化（CLAUDE.mdの作成）
/init

# 使用料金をチェック
/cost

# 会話履歴を小さく
/compact

# 会話履歴を消す
/clear

# 設定
/config
```

## 📦 含まれているツール・環境

### ベース環境
- **Node.js 18 (slim)** - メインの実行環境
- **Python 3.11** - Python開発環境
- **Git** - バージョン管理
- **GitHub CLI** - GitHub操作ツール

### VS Code拡張機能
以下の拡張機能が自動的にインストールされます：
- JSON言語サポート
- TypeScript言語サポート
- Python言語サポート
- Tailwind CSS IntelliSense
- Live Server
- Auto Rename Tag
- HTML CSS Support

### ポート設定
以下のポートが自動的に転送されます：
- **3000番ポート** - Web Development Server（通知あり）
- **5000番ポート** - Python Flask Server
- **8000番ポート** - Live Server

## ⚙️ 開発環境の詳細

### エディター設定
- デフォルトターミナル：bash
- Python インタープリター：`/usr/local/bin/python3`
- Emmet対応：JavaScript/React環境でHTMLスニペット使用可能

### パッケージ管理
Node.jsプロジェクトの場合：
```bash
npm install package-name
```

Python プロジェクトの場合：
```bash
pip install package-name
```

### カスタマイズ

#### 追加VS Code拡張機能の追加
`.devcontainer/devcontainer.json` の `extensions` 配列に追加：
```json
"customizations": {
  "vscode": {
    "extensions": [
      "existing.extension",
      "new.extension.id"
    ]
  }
}
```

#### 追加ポートの転送
```json
"forwardPorts": [3000, 5000, 8000, 9000],
"portsAttributes": {
  "9000": {
    "label": "Custom Port",
    "onAutoForward": "notify"
  }
}
```

## 🔧 トラブルシューティング

### Claude Codeが見つからない場合
```bash
# セットアップスクリプトを再実行
bash .devcontainer/setup.sh
```

### 環境の再構築
Codespacesの場合、コンテナを再ビルドすることで環境をリセットできます：
1. Command Palette (Ctrl+Shift+P) を開く
2. "Codespaces: Rebuild Container" を選択

## 📚 参考リンク

- [Claude Code 公式ドキュメント](https://docs.anthropic.com)
- [Anthropic API ドキュメント](https://docs.anthropic.com)
- [GitHub Codespaces ドキュメント](https://docs.github.com/codespaces)
- [Dev Container 設定リファレンス](https://containers.dev/implementors/json_reference/)

## 💡 ヒント

1. **効果的なプロンプト**: Claude Codeには具体的で詳細な指示を与えましょう
2. **ステップバイステップ**: 複雑なタスクは小さなステップに分けて依頼
3. **コンテキストの提供**: 関連するファイルや要件を明確に説明
4. **ポート転送の活用**: 開発中のWebアプリケーションは自動転送されるポートで確認可能
5. **拡張機能の活用**: インストール済みの VS Code 拡張機能を活用して開発効率を向上

Happy coding with Claude! 🤖✨