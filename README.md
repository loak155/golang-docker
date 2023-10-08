# web-service-gin

gin と mysql を使った簡単な web アプリケーションです。

## 環境構築

```bash:
# コンテナ起動
$ docker-compose up --build

# DB確認
$ docker-compose exec mysql /bin/bash
bash#  mysql -u test_user -p
mysql> show databases;
mysql> use test_db;
mysql> show tables;
mysql> SELECT * FROM album;
mysql> \q
```
