--- migrate up

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "data_uuid" uuid DEFAULT uuid_generate_v4() NOT NULL,
  "email" varchar NOT NULL,
  "name" varchar NOT NULL,
  "password" varchar NOT NULL,
  "created_at" timestamptz DEFAULT (now())
);

CREATE TABLE "orders" (
  "id" serial PRIMARY KEY,
  "data_uuid" uuid DEFAULT uuid_generate_v4() NOT NULL,
  "username" varchar NOT NULL,
  "user_id" int NOT NULL,
  "created_at" timestamptz DEFAULT (now())
);



CREATE TABLE "order_item" (
  "order_id" int NOT NULL,
  "item_id" int NOT NULL,
  "item_name" varchar NOT NULL,
  "amount" int NOT NULL,
  primary key(order_id,item_id)
);

CREATE TABLE "items" (
  "id" serial PRIMARY KEY,
  "data_uuid" uuid DEFAULT uuid_generate_v4() NOT NULL,
  "name" varchar NOT NULL,
  "spec" varchar NOT NULL,
  "price" int NOT NULL,
  "comment" varchar
);

ALTER TABLE "orders" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "order_item" ADD FOREIGN KEY ("order_id") REFERENCES "orders" ("id");

ALTER TABLE "order_item" ADD FOREIGN KEY ("item_id") REFERENCES "items" ("id");


--- seed
INSERT INTO users(email, name, password) values('yale@gmail.com','yale','12345');
INSERT INTO users(email, name, password) values('node@gmail.com','node','12345');
INSERT INTO "users" ("email", "name", "password") VALUES
('alice@example.com', 'Alice Smith', 'password123'),
('bob@example.com', 'Bob Johnson', 'password123'),
('carol@example.com', 'Carol Williams', 'password123'),
('dave@example.com', 'Dave Brown', 'password123'),
('eve@example.com', 'Eve Davis', 'password123'),
('frank@example.com', 'Frank Miller', 'password123'),
('grace@example.com', 'Grace Wilson', 'password123'),
('heidi@example.com', 'Heidi Moore', 'password123'),
('ivan@example.com', 'Ivan Taylor', 'password123'),
('judy@example.com', 'Judy Anderson', 'password123');

INSERT INTO "items" ("name", "spec", "price", "comment") VALUES
('Item A', 'Spec A', 100, 'First item'),
('Item B', 'Spec B', 150, 'Second item'),
('Item C', 'Spec C', 200, 'Third item'),
('Item D', 'Spec D', 250, 'Fourth item'),
('Item E', 'Spec E', 300, 'Fifth item'),
('Item F', 'Spec F', 350, 'Sixth item'),
('Item G', 'Spec G', 400, 'Seventh item'),
('Item H', 'Spec H', 450, 'Eighth item'),
('Item I', 'Spec I', 500, 'Ninth item'),
('Item J', 'Spec J', 550, 'Tenth item');

insert into orders (username, user_id) values('yale', 1), ('node',2);

insert into order_item (order_id, item_id,item_name,amount) values (1,1,'Item A',5),(1,2,'Item B',3),(1,3,'Item C',7);



CREATE TABLE "order_item" (
  "order_id" int NOT NULL,
  "item_id" int NOT NULL,
  "item_name" varchar NOT NULL,
  "amount" int NOT NULL,
  primary key(order_id,item_id)
);

--- migrate down

ALTER TABLE "orders" DROP CONSTRAINT "orders_user_id_fkey";

ALTER TABLE "order_item" DROP CONSTRAINT "order_item_order_id_fkey";

ALTER TABLE "order_item" DROP CONSTRAINT "order_item_item_id_fkey";


drop table users;
drop table orders;
drop table order_item;
drop table items;