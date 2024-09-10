-- DB作成
CREATE DATABASE room_reservation;
-- 作成したDBに接続
\c room_reservation;
-- テーブル作成
drop table if exists rooms;
create table rooms (
	id uuid not null primary key default gen_random_uuid(),
	name varchar(100) not null,
	created_at timestamp not null default CURRENT_TIMESTAMP
);
-- サンブルデータの登録
insert into rooms (name) VALUES('sample room 1');
