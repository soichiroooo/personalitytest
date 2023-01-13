# Personality Test
主にスキル向上を目的に、ポートフォリオとして性格診断テスト（Personality Test）を作成しました。

## 目次
- [概要](#概要)
- [機能](#機能)
- [開発環境](#開発環境)
- [主なGem（ライブラリ）](#主なGem（ライブラリ）)
- [ER図](#ER図)

## 概要
Personality Testはその名の通り性格診断アプリです。20の質問に答えることで、Red, Blue, Yellow, Greenの４つの性格タイプがそれぞれどの程度の割合で混ざり合っている性格なのかを診断できます。

[![Image from Gyazo](https://i.gyazo.com/17c19ded6e3d56e142b502793a4d8fda.gif)](https://gyazo.com/17c19ded6e3d56e142b502793a4d8fda)

- URL: [Personality Test](http://35.79.78.137/)
- ID: admin
- password: 2222

## 機能
+ ユーザー管理
  + ユーザー登録 / 表示 (マイページ)
  + ログイン / ログアウト
  + Cookie / セッション
+ 性格診断テスト
  + 性格診断テスト
    + 20の質問に答えます
  + テスト結果表示
    + 診断の結果一番当てはまる性格タイプを示し、その性格タイプがどのような特徴を持つのかを表示します
  + 全ユーザーの結果表示
    + 過去の診断を受けたユーザーが4つの性格タイプにどのように分布しているかを示します
  + 男性ユーザー / 女性ユーザーの結果表示
    + 過去の診断を受けた男性ユーザー / 女性ユーザーが4つの性格タイプにどのように分布しているかを示します

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