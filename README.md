# github_rest
project for github REST API.

# 開発環境
fvm 2.4.1
Flutter 3.7.3 ※1
AndroidStudio (2021.1.1 Patch3)

※1 fvmにてプロジェクト毎にFlutterバージョンを管理していますが、今回の要件ではfvmに関する記載がありませんでしたが、<br>
fvm上でも同じバージョンを使用しています。

# ファイル構成(lib/)
## error/
Exceptionを継承したエラーハンドリング用のクラス。本件では外部サーバーエラー(github)と内部エラーの切り分けのみ実装
## model/
freezed 及び json_serializable を使用し、<br>
github REST APIの[search Repository](https://docs.github.com/ja/rest/search?apiVersion=2022-11-28#search-repositories)に対してのデータクラスを作成。<br>
REST APIなので基本的にオーバーフェッチしている箇所はアクセスする予定がない為、定義していません。
## repository/
github REST API用に作成。要件外の仕様は以下のように設定した。<br>
- per_pageパラメータを15に設定
- star数で降順表示
- 安定した出力結果を確認するように、テストモード（検索先を私自身のリポジトリに絞る）を作成
## viewModel/
riverpod を利用して作成。検索処理を行うViewModel以外はできるだけ細分化して疎結合した。
## view/
### component/
viewの中でも共通部品となるクラス
### extension/
buildContext のExtensionクラス。ThemeMode.systemの時に端末のダークモード設定値を取得する為に作成。

## test/, integration_test
unit, widget, integration を実施。<br>
unitは主にgithub REST API に対するモデルデータやrepositoryの動作チェックをメインに実施<br>
widgetは主な２画面(greeting, home)の画面要素のチェック、AsyncValueの非同期データの結果パターンでの画面表示の確認を実施<br>
integrationはユースケース(検索窓に文字列を入力し、検索結果の画面が表示)及び<br>
簡単なリグレッションテスト(検索窓に文字列を入力したがバリデーションエラー)を実施。

# その他画面の動作仕様
1. 初期画面表示時に検索窓にフォーカスされ、keyboardが開いて即文字が打てるようにした
2. 検索窓以外のところをタップすると、検索窓からフォーカスが外れ、keyboardが閉まる
3. テーマモードは端末依存のテーマ適応で起動し、ドロワー内のテーマモード切替を行うとテーマが切り替わる
4. 検索結果はListViewで生成され、スクロールが末端に到達すると、さらに検索結果を取得して追加する
5. ListViewに表示されたリポジトリ名をタップすると、モーダルが表示され、リポジトリの詳細が閲覧できる