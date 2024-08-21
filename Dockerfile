# ベースイメージ
FROM openjdk:17-jdk

# 作業ディレクトリの作成
WORKDIR /usr/src/app

# 各サーバーフォルダをコンテナにコピー
COPY papermc /usr/src/app/papermc
COPY bungeecord /usr/src/app/bungeecord
COPY velocity /usr/src/app/velocity

# ポートの指定
EXPOSE 25565 25577 25599

# サーバー起動スクリプト
CMD ["sh", "-c", "cd /usr/src/app/velocity && java -jar velocity.jar & cd /usr/src/app/bungeecord && java -jar bungee.jar & cd /usr/src/app/papermc && java -jar paper.jar"]
