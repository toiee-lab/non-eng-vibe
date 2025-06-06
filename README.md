# Claude Code Development Container

非エンジニア向けの **Claude Code 実行環境** です。GitHub Codespaces で、ワンクリックで Claude Code を使った Web 開発・Python 開発を始められます。

*created by Claude Sonnet 4*

## 🚀 すぐに始める

### 1. このテンプレートを使用

1. 右上の緑のボタン **「Use this template」** をクリック
2. **「Create a new repository」** を選択
3. リポジトリ名と説明を入力（Private 推奨）
4. **「Create repository」** をクリック

### 2. Codespace を起動

1. 作成したリポジトリのページで **「Code」** ボタンをクリック
2. **「Codespaces」** タブを選択
3. **「Create codespace on main」** をクリック

数分でセットアップが完了します ⏱️

> 💡 **ヒント**: Claude Code を本格的に使うなら、事前に **Claude Pro プラン**（月額$20）の契約をおすすめします。API利用料を気にせず開発に集中できます！

### 3. Claude Code を使い始める

ターミナルを開いて以下を実行：

```bash
claude
```

初回は認証が必要です：
1. [Anthropic Console](https://console.anthropic.com) でアカウント作成
2. **Claude Pro プランを契約**（月額$20 - API使用料込み！）
3. API キーを取得して入力

💡 **Claude Pro がお得！** API利用料を気にせず、Claude Code を思い切り使えます

## 💡 Claude Code の基本的な使い方

### 初期設定
```bash
# Claude Code を起動
claude

# プロジェクトの初期化（初回のみ）
/init

# 料金使用状況を確認
/cost
```

### よく使うコマンド
```bash
# 前回の会話を継続
claude -c

# 会話履歴を選んで再開
claude --resume

# ヘルプを表示
claude --help
```

### Claude Code 内でのコマンド
```bash
# 会話履歴を圧縮
/compact

# 会話履歴をクリア
/clear

# 設定を確認・変更
/config
```

## 🌐 Web 開発の始め方

### HTML/CSS/JavaScript を作成
Claude Code に話しかけてみてください：

```
「シンプルなポートフォリオサイトを作って」
「ToDoリストのWebアプリを作って」
「レスポンシブなランディングページを作って」
```

### Web サイトをプレビュー
1. HTML ファイルを右クリック
2. **「Open with Live Server」** を選択
3. 自動でブラウザが開き、リアルタイムプレビューが可能

または、ターミナルで：
```bash
# 現在のディレクトリをWebサーバーで配信
npm start

# ポート8000で配信
npm run dev
```

## 🐍 Python 開発の始め方

### Python プログラムを作成
Claude Code に話しかけてみてください：

```
「Webスクレイピングのスクリプトを作って」
「簡単なFlaskアプリを作って」
「データ分析のPythonコードを作って」
```

### Python を実行
```bash
# Pythonファイルを実行
python3 your_script.py

# インタラクティブモードで起動
python3
```

## 📂 この環境に含まれるツール

### 開発言語・ランタイム
- **Node.js 20** - JavaScript実行環境
- **Python 3.11** - Python実行環境

### Web開発ツール
- **Live Server** - リアルタイムプレビュー付きWebサーバー
- **http-server** - シンプルなHTTPサーバー
- **Prettier** - コード整形ツール
- **ESLint** - JavaScript品質チェック

### Python ライブラリ
- **requests** - HTTP通信
- **beautifulsoup4** - Webスクレイピング
- **flask** - Webアプリケーション開発
- **fastapi** - 高速API開発
- **uvicorn** - ASGIサーバー

### VS Code 拡張機能
- Claude Code 公式拡張機能
- Live Server（Webプレビュー）
- Python サポート
- Tailwind CSS IntelliSense
- 日本語言語パック

## 🔧 カスタマイズ

### VS Code 拡張機能を追加
`.devcontainer/devcontainer.json` の `extensions` 配列に追加：

```json
"extensions": [
  "existing.extension",
  "new.extension.id"
]
```

### ポートを追加
```json
"forwardPorts": [3000, 5000, 8000, 9000]
```

### Python パッケージを追加
`.devcontainer/setup.sh` の pip install 部分に追加：

```bash
pip3 install --user new-package
```

## 💰 費用について

### GitHub Codespaces
- 個人アカウント：月60時間まで無料
- それ以降：使用時間に応じて課金

### Claude API（2025年6月更新！）

#### 🌟 Claude Pro プラン（推奨）
- **月額 $20**
- **API利用料込み** - 追加料金なし！
- Claude Code を思い切り使えます
- Web版 Claude も優先アクセス・高品質

#### 従量課金プラン
- 使用量に応じて課金
- 少量使用なら安価ですが、たくさん使うとClaude Proの方がお得

**💡 おすすめ**: 本格的にClaude Codeを使うなら **Claude Pro プラン** が断然お得です！

## 🆘 トラブルシューティング

### Claude Code が見つからない
```bash
# セットアップスクリプトを再実行
bash .devcontainer/setup.sh
```

### 環境を最初からやり直したい
1. VS Code のコマンドパレット（Ctrl+Shift+P）を開く
2. "Codespaces: Rebuild Container" を選択

### Live Server でプレビューできない
1. HTML ファイルを右クリック
2. "Open with Live Server" がない場合は、拡張機能を再インストール

## 📚 参考リンク

- [Claude Code 公式ドキュメント](https://docs.anthropic.com)
- [Anthropic API ドキュメント](https://docs.anthropic.com)
- [GitHub Codespaces ドキュメント](https://docs.github.com/codespaces)

## 🎉 作成例

Claude Code で以下のようなものを作成できます：

### Web サイト
- 個人ポートフォリオ
- 企業ランディングページ
- ブログサイト
- オンラインレジュメ

### Web アプリケーション
- ToDoリスト
- 計算機アプリ
- ゲーム（じゃんけん、クイズなど）
- データ可視化ダッシュボード

### Python プログラム
- Webスクレイピングツール
- データ分析スクリプト
- FlaskやFastAPIのWebアプリ
- 自動化ツール

---

**Claude Code で、あなたのアイデアを形にしてみてください！** 🤖✨