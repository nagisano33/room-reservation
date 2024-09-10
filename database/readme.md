# room-reservation database
Docker 操作備忘録

## コンテナの起動
```bash
$ cd database/
$ docker compose up -d
```

## データベースの確認
```bash
$ docker exec -it postgres_room_reservation bash
```

その後コンテナ内でデータベースに接続
```bash
$ psql -U user -d room_reservation
```

クエリを流してみる
(必ず `;` をつけること)
```sql
select * from rooms;
```

## コンテナの停止
```bash
$ docker-compose stop
```

## コンテナの削除
```bash
$ docker-compose down
```