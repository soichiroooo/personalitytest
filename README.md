# Personality Test
主にスキル向上を目的に、ポートフォリオとして性格診断テスト（Personality Test）を作成しました。

## 目次
- [機能](#機能)
- [開発環境](#開発環境)
- [主なGem（ライブラリ）](#主なGem（ライブラリ）)

## 機能
+ 認証
  + ログイン / ログアウト
  + Cookie / セッション
  + ユーザー登録 / 表示 (マイページ)
  + メールアドレス認証
+ 性格診断テスト
  + テスト回答
  + テスト結果表示
  + 全ユーザーの結果表示 / 男性ユーザーの結果表示 / 女性ユーザーの結果表示

## 開発環境
+ Ruby (2.6.5)
+ Ruby on Rails (6.0.0)
+ JavaScript
  + Chart.js 
+ MySQL
+ Git/GitHub
+ Visual Studio Code
+ AWS

## 主なGem（ライブラリ）
+ devise (ユーザー管理機能)
+ rubocop (静的コード解析, コードチェック)
+ capistrano (自動デプロイ)
+ unicorn (アプリケーションサーバー)
+ aws-sdk-s3 (AWS, S3)

## ER図
![ER.png](https://github.com/soichiroooo/personalitytest/blob/main/ER.png)