INSERT INTO users(data_uuid, email, name, password) values('asdf','y','y','y');

INSERT INTO "users" ("data_uuid", "email", "name", "password", "created_at") VALUES
('123e4567-e89b-12d3-a456-426614174000', 'alice@example.com', 'Alice Smith', 'password123', now()),
('123e4567-e89b-12d3-a456-426614174001', 'bob@example.com', 'Bob Johnson', 'password123', now()),
('123e4567-e89b-12d3-a456-426614174002', 'carol@example.com', 'Carol Williams', 'password123', now()),
('123e4567-e89b-12d3-a456-426614174003', 'dave@example.com', 'Dave Brown', 'password123', now()),
('123e4567-e89b-12d3-a456-426614174004', 'eve@example.com', 'Eve Davis', 'password123', now()),
('123e4567-e89b-12d3-a456-426614174005', 'frank@example.com', 'Frank Miller', 'password123', now()),
('123e4567-e89b-12d3-a456-426614174006', 'grace@example.com', 'Grace Wilson', 'password123', now()),
('123e4567-e89b-12d3-a456-426614174007', 'heidi@example.com', 'Heidi Moore', 'password123', now()),
('123e4567-e89b-12d3-a456-426614174008', 'ivan@example.com', 'Ivan Taylor', 'password123', now()),
('123e4567-e89b-12d3-a456-426614174009', 'judy@example.com', 'Judy Anderson', 'password123', now());

ALTER TABLE "item" ADD COLUMN "price" int NOT NULL;

insert into item (data_uuid, name, spec, price) values('asdf','item1','spec1',50);

select * from item;

delete from orders;
insert into orders(user_id,data_uuid) values (1,'abf')
alter table orders add column "data_uuid" varchar not null



drop table orders;


alter table orders add column "username" varchar not null 
INSERT INTO order_item(order_id, item_id, amount) values()


ALTER TABLE "item" ALTER COLUMN "comment" DROP NOT NULL;
INSERT INTO "item" ("data_uuid", "name", "spec", "price", "comment") VALUES
('123e4567-e89b-12d3-a456-426614174010', 'Item A', 'Spec A', 100, 'First item'),
('123e4567-e89b-12d3-a456-426614174011', 'Item B', 'Spec B', 150, 'Second item'),
('123e4567-e89b-12d3-a456-426614174012', 'Item C', 'Spec C', 200, 'Third item'),
('123e4567-e89b-12d3-a456-426614174013', 'Item D', 'Spec D', 250, 'Fourth item'),
('123e4567-e89b-12d3-a456-426614174014', 'Item E', 'Spec E', 300, 'Fifth item'),
('123e4567-e89b-12d3-a456-426614174015', 'Item F', 'Spec F', 350, 'Sixth item'),
('123e4567-e89b-12d3-a456-426614174016', 'Item G', 'Spec G', 400, 'Seventh item'),
('123e4567-e89b-12d3-a456-426614174017', 'Item H', 'Spec H', 450, 'Eighth item'),
('123e4567-e89b-12d3-a456-426614174018', 'Item I', 'Spec I', 500, 'Ninth item'),
('123e4567-e89b-12d3-a456-426614174019', 'Item J', 'Spec J', 550, 'Tenth item');
