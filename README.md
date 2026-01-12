# ゆるコーヒーログ

シンプルなコーヒー記録アプリ。日々のコーヒー体験をゆるく記録できます。

## コンセプト

- 1画面で完結するシンプルなUI
- 入力は30秒以内で完了
- 評価・比較をしない、断定しない表現
- オフラインで動作、認証不要

## 機能

- **ホーム**: ログ一覧表示
- **ログ作成/編集**: 場所（自宅/カフェ）、名前、味の記録
- **ログ詳細**: 記録の確認
- **分析**: 軽量な振り返り機能

## 技術スタック

- Flutter (iOS/Android)
- ローカルストレージ

## プロジェクト構成

```
app/
├── lib/
│   ├── main.dart      # エントリーポイント
│   ├── models/        # データモデル
│   ├── screens/       # 画面
│   ├── widgets/       # ウィジェット
│   ├── services/      # サービス層
│   └── utils/         # ユーティリティ
├── android/           # Android設定
├── ios/               # iOS設定
└── test/              # テスト
```

## セットアップ

```bash
# 依存関係のインストール
make deps

# 環境確認
make doctor
```

## 主要コマンド

```bash
make help           # ヘルプ表示
make run            # アプリ実行（デバッグ）
make run-ios        # iOSシミュレータで実行
make run-android    # Androidエミュレータで実行
make test           # テスト実行
make analyze        # コード解析
make fmt            # コードフォーマット
make clean          # ビルドファイル削除
```

## ビルド

```bash
make build-ios      # iOS用ビルド
make build-android  # Android APK
make build-aab      # Android App Bundle
```