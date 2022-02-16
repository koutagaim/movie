## README

## 映画投稿システム
Yahoo!映画を参考に映画の投稿サイトを作成中。 https://movies.yahoo.co.jp/  
機能としては基本的な投稿機能やログイン機能、削除機能や新規登録昨日の他に、Yahoo!映画に足りない「投稿時間の時間わけ」や「投稿の前になぜ、この映画を見たかのアンケート  exこの作品のファンだからなのかそれともただ単に人気だからかどうか）を製作中。
※コンフリクトによる文字化けしたため、書き直し。。（2022年2月11日)
[![Image from Gyazo](https://i.gyazo.com/d3ddaa6a47b5dfe3d8d1a9abbdbcef42.png)](https://gyazo.com/d3ddaa6a47b5dfe3d8d1a9abbdbcef42)　　　

## 使用言語
フレームワークはRuby on Rails フロントエンドの言語はHTML,CSS,javascript

## 用件会議
# リソースや期限について
コスト、、毎月1万5000円（MENTAでの毎月料)、特に有料のオープンソースを適用する予定はなし。
時間、、1日のうち少なくとも二時間は作業に費やす
期限、、2月末まで(就職活動で忙しいため、前後する可能性あり。）

# 機能について
- Railsの基本的な機能
    - 新規作成機能
    - 編集機能
    - 削除機能
    - 一覧表示機能
    - ユーザー登録機能
    - ログイン,ログアウト機能
- 投稿時間の時間わけ機能(時間帯のグループを四つに分ける。ex 最近、やや最近、やや古い、古いなど)*変更の可能性アリ
- アンケート機能(投稿前にアンケートを実施)


## 開発日記
文字化けしてしまったため、今までのが全てやり直し
migareionファイルにcharacter,bestceneのカラムを追加。しかし、詳細ボタンで表示されず。。原因を追求中。javascriptもassets以下に入れないといけないことが発覚。原因を追求。その前に基本的な機能は実装したい。2022年2月12日
[![Image from Gyazo](https://i.gyazo.com/82e478b84c15e7a86bd7e7bf1840b00f.png)](https://gyazo.com/82e478b84c15e7a86bd7e7bf1840b00f)

userモデルを作成。adminやsession、cookieなども改めて詳しく知ることができた。ここからログイン機能について作成していく。2022年2月13日

progressbarの実装のために[RailsでJavaScriptが読み込まれない時の対処方法を現役エンジニアが解説【初心者向け】](https://techacademy.jp/magazine/41310#3)や[Rails 使用するCSSを指定する](https://keruuweb.com/rails-%E4%BD%BF%E7%94%A8%E3%81%99%E3%82%8Bcss%E3%82%92%E6%8C%87%E5%AE%9A%E3%81%99%E3%82%8B/)を調べて実行して
[![Image from Gyazo](https://i.gyazo.com/a8ded7e24908fd17c65c076b8c0eedde.png)](https://gyazo.com/a8ded7e24908fd17c65c076b8c0eedde)
[![Image from Gyazo](https://i.gyazo.com/55f54d3a0be646fe540f264797e6f665.png)](https://gyazo.com/55f54d3a0be646fe540f264797e6f665)
という画面が出たので指示通りにconfig/initializer/assets.rbに

```
config/initializer/assets.rb
Rails.application.config.assets.precompile += %w( progress/progress.js )
Rails.application.config.assets.precompile += %w( progress/progress.css )
```


と記述したものの


```
Started GET "/" for ::1 at 2022-02-16 18:22:14 +0900
   (0.8ms)  SELECT "schema_migrations"."version" FROM "schema_migrations" ORDER BY "schema_migrations"."version" ASC
  ↳ /Users/murakoshikouta/.rbenv/versions/2.6.8/lib/ruby/gems/2.6.0/gems/activerecord-5.2.6/lib/active_record/log_subscriber.rb:98
Processing by ThemesController#index as HTML
  Rendering themes/index.html.slim within layouts/application
  Theme Load (0.7ms)  SELECT "themes".* FROM "themes"
  ↳ app/views/themes/index.html.slim:31
  Rendered themes/index.html.slim within layouts/application (32.8ms)
Completed 200 OK in 404ms (Views: 387.1ms | ActiveRecord: 4.6ms)
```



とターミナルで表示され、実装されず。現在も原因究明中。そしてja.ymlも翻訳されないエラーが見つかる。原因を究明中。





