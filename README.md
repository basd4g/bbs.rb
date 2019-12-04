# bbs.rb

## 概要

Ruby on Rails を用いた掲示板(Bulletin Board System)

以下の機能を持つ

- トピックの作成、編集、削除
- (トピック内の)投稿,返信の作成、削除

トピック ... 特定の話題を定めた、投稿ができるスペースのこと。
投稿 ... 特定のトピック内に存在する、ユーザが追加したコメントのこと。各投稿は、ID(数字)、本文、投稿者、返信元ID(任意)をもつ。

## Run Locally

```sh
# postgreSQLをバックグラウンドで起動
$ postgres -D /usr/local/var/postgres >logfile 2>&1 &

# postgreSQL上でデータベース、ユーザなどを作成

# データベース接続のための環境変数設定
$ export BBS_DATABASE_DATABASE="yourDatabaseName"
$ export BBS_DATABASE_USER="yourDatabaseUser"
$ export BBS_DATABASE_PASSWORD="yourDatabasePassword"
$ export BBS_DATABASE_HOST="localhost"
$ export BASIC_USER="basicAuthUser"
$ export BASIC_PASSWORD="basicAuthPassword"

$ git clone https://github.com/basd4g/bbs.rb.git
$ cd bbs.rb
$ bundle install
$ rails db:migrate
$ rails server
```

## Use on heroku

[bbs.rb](http://bbs-rb.herokuapp.com/) is running on heroku.

## 環境

- ruby 2.6.5p114
- Rails 6.0.1
- psql (PostgreSQL) 11.5

